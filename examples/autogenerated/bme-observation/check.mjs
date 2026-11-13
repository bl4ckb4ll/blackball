// BME-only finite interchange witness. See attempt.md for execution boundaries.
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { fileURLToPath } from 'node:url';
import assert from 'node:assert/strict';

function fail(code) { throw new Error(code); }
function decode(field) {
  let out = '';
  for (let i = 0; i < field.length; i++) {
    if (field[i] !== '\\') { out += field[i]; continue; }
    const next = field[++i];
    const escapes = { '\\': '\\', t: '\t', n: '\n', r: '\r' };
    if (!Object.hasOwn(escapes, next)) fail('BME-ESCAPE');
    out += escapes[next];
  }
  return out;
}
function encode(field) {
  return field.replaceAll('\\', '\\\\').replaceAll('\t', '\\t')
    .replaceAll('\n', '\\n').replaceAll('\r', '\\r');
}
function parse(bytes) {
  let body;
  try { body = new TextDecoder('utf-8', { fatal: true }).decode(bytes); }
  catch { fail('BME-UTF8'); }
  if (!body.endsWith('\n')) fail('BME-TRUNCATED');
  if (body.includes('\r')) fail('BME-LINE-END');
  const lines = body.slice(0, -1).split('\n');
  const header = lines.shift().split('\t');
  if (header.some(x => !x) || new Set(header).size !== header.length) fail('BME-HEADER');
  const rows = lines.map(line => {
    const fields = line.split('\t');
    if (fields.length !== header.length) fail('BME-SHAPE');
    return fields.map(decode);
  });
  return { header, rows };
}
function serialize(table) {
  return Buffer.from(table.header.join('\t') + '\n' +
    (table.rows.length ? table.rows.map(row => row.map(encode).join('\t')).join('\n') + '\n' : ''));
}
function count(value) {
  if (value === 'UNKNOWN') return null;
  if (!/^(0|[1-9][0-9]*)$/.test(value)) fail('BME-COUNT');
  return BigInt(value);
}
function check(table) {
  const required = ['observation_id', 'revision_id', 'collection_scope',
    'retrieval_state', 'returned', 'classification_state', 'qualifying',
    'source_time', 'source_precision', 'original_source_time', 'original_precision',
    'money_basis', 'source_money_basis', 'period', 'source_period', 'amount_minor',
    'evidence_stage', 'claimed_stage', 'source_span'];
  if (required.some(name => !table.header.includes(name))) fail('BME-FIELD');
  const seen = new Map();
  return table.rows.map(fields => {
    const row = Object.fromEntries(table.header.map((key, i) => [key, fields[i]]));
    if (!row.observation_id || !row.revision_id) fail('BME-IDENTITY');
    const identity = row.observation_id + '\0' + row.revision_id;
    const content = fields.map(encode).join('\t');
    if (seen.has(identity) && seen.get(identity) !== content) fail('BME-COLLISION');
    seen.set(identity, content);
    if (!row.collection_scope || row.collection_scope === 'UNKNOWN') fail('BME-SCOPE');
    if (!row.source_span) fail('BME-SPAN');
    if (row.money_basis !== row.source_money_basis || row.period !== row.source_period)
      fail('BME-MONEY-BASIS');
    if (row.amount_minor !== 'UNKNOWN' && !/^-?(0|[1-9][0-9]*)$/.test(row.amount_minor))
      fail('BME-MONEY-INTEGER');
    // Original fields are independently stipulated fixture evidence, not an attestation.
    if (row.source_time !== row.original_source_time || row.source_precision !== row.original_precision)
      fail('BME-DATE-PRECISION');
    const datePatterns = { unknown: /^UNKNOWN$/, year: /^[0-9]{4}$/,
      month: /^[0-9]{4}-(0[1-9]|1[0-2])$/, day: /^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$/ };
    if (!datePatterns[row.source_precision]?.test(row.source_time)) fail('BME-DATE-SHAPE');
    if (row.source_precision === 'day') {
      const [year, month, day] = row.source_time.split('-').map(Number);
      const leap = year % 4 === 0 && (year % 100 !== 0 || year % 400 === 0);
      const lengths = [31, leap ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
      if (day > lengths[month - 1]) fail('BME-DATE-SHAPE');
    }
    const stages = ['source_review', 'fixture_checks', 'live_acquisition', 'typecheck', 'model_execution', 'physical_acceptance'];
    if (!stages.includes(row.evidence_stage) || row.claimed_stage !== row.evidence_stage) fail('BME-STAGE');
    if (!['complete', 'partial', 'failed', 'not_attempted'].includes(row.retrieval_state)) fail('BME-RETRIEVAL');
    if (!['complete', 'partial', 'not_attempted'].includes(row.classification_state)) fail('BME-CLASSIFICATION');
    const returned = count(row.returned), qualifying = count(row.qualifying);
    if (['failed', 'not_attempted'].includes(row.retrieval_state)) {
      if (returned !== null || qualifying !== null || row.classification_state !== 'not_attempted') fail('BME-FAILED-ZERO');
      return row.retrieval_state === 'failed' ? 'failed-retrieval' : 'not-attempted';
    }
    if (returned === null) fail('BME-COUNT');
    if (row.classification_state === 'not_attempted' && qualifying !== null) fail('BME-CLASSIFICATION');
    if (row.classification_state === 'complete' && qualifying === null) fail('BME-CLASSIFICATION');
    if (qualifying !== null && qualifying > returned) fail('BME-COUNT');
    if (returned === 0n) return row.retrieval_state + '-empty';
    if (row.classification_state === 'complete' && qualifying === 0n) return 'zero-qualifying';
    return 'observed-records';
  });
}

const root = resolve(fileURLToPath(new URL('../../../', import.meta.url)));
const scope = resolve(root, 'llm/biomedical-engineering-undergraduate-labor-market/campaign/contract-v1/fixtures');
const cases = parse(readFileSync(resolve(scope, 'cases.tsv')));
let passed = 0;
console.log('case_id\tstatus\tobserved');
for (const [id, file, expected, decision] of cases.rows) {
  const bytes = readFileSync(resolve(scope, file));
  let actual = 'PASS', decisions = [];
  try {
    const table = parse(bytes);
    assert.deepEqual(serialize(table), bytes, 'BME-ROUNDTRIP');
    decisions = check(table);
    if (id === 'unicode-escapes-extensions') {
      assert.equal(table.rows[0][table.header.indexOf('extra_note')], 'literal \\n; tab\tnewline\nCR\r; Tuğba ∧ Idriç');
      assert.equal(table.rows[0][table.header.indexOf('empty_extension')], '');
    }
  } catch (error) { actual = error.message; }
  assert.equal(actual, expected, id);
  if (actual === 'PASS') assert.equal(decisions.join('|'), decision, id);
  console.log(`${id}\tPASS\t${actual === 'PASS' ? decisions.join('|') : actual}`);
  passed++;
}
// Byte-level corruptions test the same parser, without a substituted text decoder.
for (const [name, bytes, wanted] of [
  ['invalid-utf8', Buffer.from([0xff, 10]), 'BME-UTF8'],
  ['truncated-final-line', Buffer.from('a\nb'), 'BME-TRUNCATED'],
  ['unknown-escape', Buffer.from('a\n\\q\n'), 'BME-ESCAPE'],
  ['duplicate-header', Buffer.from('a\ta\nx\ty\n'), 'BME-HEADER']
]) {
  assert.throws(() => parse(bytes), error => error.message === wanted, name);
  console.log(`${name}\tPASS\t${wanted}`); passed++;
}
const empty = Buffer.from('extension\n');
assert.deepEqual(serialize(parse(empty)), empty);
console.log('header-only-roundtrip\tPASS\tempty table preserved'); passed++;
console.log(`total\tPASS\t${passed}`);
