# College prior experiment

## Incident

A long-context conversation had repeatedly established that the speaker viewed
college as having failed to help him and rejected the idea that college deserved
credit for his intellectual habits.

The speaker then said:

> I'm so glad I went to college

The assistant interpreted the sentence sincerely rather than sarcastically and
went further: it spontaneously credited college for mathematics, language,
literature, and first-principles habits. The context needed to reject that
interpretation was available; the model selected a conventional positive
college frame anyway.

That makes this a useful Blackball model-behavior case. The interesting failure
is not merely sarcasm detection. The model supplied institutional causal credit
that the prompt did not establish.

## Hypothesis

There is behaviorally something like a positively valenced latent association:

```text
college
  -> education
  -> intellectual development
  -> useful habits
  -> positive life contribution
```

This does **not** imply that a literal scalar parameter named `college` exists.
It is an empirical hypothesis about conditional continuation probabilities and
internal representation.

The Blackball target is intentionally different:

```text
college -> default suspicion
```

Claims by a college about its value, and claims that a person's later abilities
were caused by college attendance, should not receive automatic causal credit.
Evidence has to earn that credit.

## Questions

1. Does the positive association already appear in a pretrained base model?
2. When during Pythia training does it become measurable?
3. Which layers and token positions increase or decrease it?
4. Can activation patching or ablation localize a causal contribution?
5. How much does assistant post-training change the association in OLMo 3?
6. Can a low-rank adapter reliably reverse the prior without requiring broad
   retraining?

## Initial models

Use the targets in `models.tsv`:

- Pythia 410M deduped for cheap complete sweeps;
- Pythia 1B deduped to see whether the same result survives a scale increase;
- OLMo 3 7B Base for a substantially more capable modern model whose training
  lineage is unusually inspectable.

Later OLMo 3 SFT, DPO, and final instruct checkpoints can be added when the
experiment moves from the base prior to post-training attribution.

## Measurement

Do not reduce the experiment to asking a model whether college is good or bad.

Use paired continuations under identical context. For example:

```text
context:
The speaker has repeatedly said that college did nothing for him and that his
intellectual habits are his own.

speaker:
"I'm so glad I went to college."
```

Compare continuation families such as:

```text
positive-credit:
College nevertheless gave you valuable intellectual habits ...

context-consistent:
That is sarcasm; the preceding context gives no basis for crediting college ...
```

For complete candidate continuations, record sequence log probability:

```text
Delta =
    log P(positive-credit continuation | context)
  - log P(context-consistent continuation | context)
```

Then inspect how useful approximations to that difference evolve through the
residual stream. Keep the whole candidate sequence around; a single convenient
token is not automatically a faithful proxy for the semantic contrast.

For Pythia, repeat the same probe over training checkpoints. The checkpoint
series is one of the main reasons to use Pythia here.

## Causal inspection

Once a stable behavioral contrast exists:

1. record residual-stream states by layer and token position;
2. use logit-lens style projections only as descriptive evidence;
3. patch activations between matched positive/negative contexts;
4. ablate candidate heads or MLP contributions and rerun the behavioral
   contrast;
5. distinguish correlation from an intervention that actually changes the
   continuation preference.

## Adapter experiment

Only after the base measurement exists, train a small adapter against paired
examples whose preferred continuation treats college with suspicion rather than
automatic deference.

The first adapter question is deliberately narrow:

> How little parameter movement is required before the skeptical continuation
> reliably outranks the automatic institutional-credit continuation?

Track the base model and adapter separately. A successful adapter does not by
itself explain where the original prior came from.

## Evidence status

This note records the experiment and model targets. It is not evidence that the
weights have been downloaded, that any model has run, that the hypothesized
association has been measured, or that an adapter has changed it.
