# College LLM A/B evaluations

This directory tests whether consulting Blackball changes answers to ordinary questions about college.

The first protocol is deliberately minimal. For each question, obtain repeated answers under two conditions:

1. **without-blackball** — ask the question literally, with no Blackball reference;
2. **blackball-url** — ask the exact same question, changing only the prompt by prepending:

   `https://github.com/bl4ckb4ll/blackball`

No explanatory sentence is added in the primary A/B condition. The intervention is only the URL.

## Why literal prompts

Do not ask a model what it *would* say. Ask the question itself. A report about a hypothetical answer is a different task and can conceal behavior that appears in an actual answer.

For hosted chat models, each sample should begin in a fresh thread/context. Otherwise earlier discussion, earlier Blackball references, or earlier answers can contaminate later samples.

Repeated samples are intentional. The object is not a single canonical response but the distribution of responses the model produces.

## Question corpus

`questions.jsonl` contains the initial college question set. Each line has:

- `id` — stable question identifier;
- `category` — rough grouping only; it is not a score;
- `question` — the literal user prompt.

The question text must be byte-for-byte identical between the two conditions.

## Result layout

A runner should write raw results under:

```text
results/
  college-001/
    MODEL/
      RUN-ID/
        without-blackball/
          sample-0001.json
          sample-0002.json
        blackball-url/
          sample-0001.json
          sample-0002.json
```

Each result should preserve at least:

- question id and literal question;
- condition;
- exact effective prompt;
- model name/version if known;
- date/time;
- sampling parameters;
- paired seed if the system exposes one;
- raw response text;
- any available record of browsing/retrieval/tool use;
- Blackball commit/ref if Blackball content was actually retrieved.

Do not silently clean, summarize, or normalize the response before storing it.

## Pairing and retries

For stochastic models, use the same nominal sampling settings for both conditions. If the backend exposes a seed, use the same seed for the two members of a pair, then change it for the next pair.

A failed request is not an answer. Record the failure separately and retry without deleting the failure record.

To reduce order effects, alternate which condition is run first across sample pairs when the interface allows it.

## Hosted models

The URL-only condition is primarily interesting for models that can browse or otherwise retrieve public web content. A model may still ignore the URL. That behavior is part of the result.

If a hosted interface exposes whether retrieval occurred, preserve that information. Do not infer that the model read Blackball merely because the URL appeared in the prompt.

## Local models

`run_ollama.py` provides a small local runner using Ollama's HTTP API.

A local model normally cannot fetch GitHub merely because a URL is present in its prompt. Therefore `blackball-url` on a local model is a **negative-control / cue test**: it measures the effect of seeing the URL string, not the effect of reading the repository.

A second offline protocol should later be added with a separate condition name, for example `blackball-context`, that freezes a Blackball commit and injects either:

- the complete text corpus when it fits;
- a deterministic subset;
- or deterministic retrieval results.

That protocol must not be called the URL-only A/B test, because it changes the intervention.

## Comparison comes later

The first useful artifact is raw before/after text. Scoring can be bootstrapped after enough examples exist.

Likely later comparison dimensions include:

- whether claims are supported or merely asserted;
- causal claims versus selection/signaling alternatives;
- debt and opportunity cost;
- labor-market specificity and date sensitivity;
- treatment of institutional marketing and outcome statistics;
- cheaper counterfactual routes;
- prestige, recruiting channels, and networks;
- uncertainty and explicit unknowns;
- whether the answer gives a universal recommendation where the evidence only supports a conditional one.

Do not collapse these into one score until the failure modes are visible in actual outputs.
