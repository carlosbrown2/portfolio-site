---
layout: page
title: "Causal Inference: Part 2"
description:
sitemap: false
hide_last_modified: true
---

Here in Causal Inference Part 2, we go through a code implementation of causal inference applied to a healthcare problem. The problem was originally explored with some older, more traditional statistical techniques. Consider this the logical follow up to part 1 where we implement the mathematics described there. 

If you need a refresher on the basics of Causal Inference, see [Part 1](/blog/2021-07-08-Causal-Inference-1).

For background on the original analysis, see [here](https://carlosbrown2.github.io/pe-study/index.html)

I won't reveal any spoilers, you'll just have to see the notebook for yourself.



<iframe
  src="https://carlosbrown2.github.io/causal-pe/lab?path=dohwy_analysis_PEStudy.ipynb"
  width="100%"
  height="500px"
>
</iframe>

## Discussion
The results of our original analysis have been confirmed. PE type does not seem to causally influence the adverse event rates of patients. Though our results have been confirmed, perhaps there are a few cautions to remember.

- This is not a randomized controlled trial. There is still the possibility, though unlikely, of omitted variable bias. Though control for demographic variables such age, gender, and race should eliminate hidden variation, we cannot be completely sure until an RCT is run.
- Distance matching is imperfect. The treatment and control pairs are selected by minimizing distance. This reduces variance between the two groups, but does not eliminate it completely.
- This dataset is from a single hospital system in a single region of the USA. Though we have not done a power analysis since this is an observational study, there is always a chance for a Type II error where there is an effect that we weren't able to detect.


