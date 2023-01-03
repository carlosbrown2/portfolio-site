---
layout: page
title: "Bias and Variance"
description: "Accurate causal estimations"
sitemap: false
hide_last_modified: false
---

One question I've been pondering lately: Is the aim of controlling for confounding in a causal setting to reduce bias or to reduce variance?

After all, in ML we are used to addressing one of these at a time.

For example...

💡 Regularization: Reduce Variance and total MSE by adding a bias term

💡 Ensembling: Reduce variance by aggregating predictions from many low bias, high variance learners.

💡 Model Specification: Reduce bias by adding in more terms to our OLS



When we control for confounding, remove any statistical dependencies between the covariates of a model and our treatment variable, so that when changes in the population happen, they are attributable to treatment. This corresponds to a Randomized Controlled trial where the covariates are perfectly balanced between treatment (T) and control (C). This means they don't differ significantly in aggregate. Put another way, they vary together.



Let's say that our estimand of interest is the difference between these two. We know then that we minimize the variance of our estimand by maximizing the covariance between them.


$$
Var(T-C) = Var(T) + Var(C) - 2Cov(T,C)
$$


This represents the balance we achieved through randomization, which can also be achieved through blocking or controlling. However we know that controlling for (the right) confounders can cause our causal estimates to completely reverse sign and change magnitude, as seen in Simpson's Paradox. Therefore, confounders introduce bias in our estimates and controlling for them reduces that bias.


We're not used to reducing both simultaneously, so this is a bit strange. Is that really what we're doing? Usually, we select a high bias, low variance model and correct for that bias or we select a low bias, high variance model and seek to reduce the variance as well. In the model free case, we know that when comparing two means, the sample mean is an unbiased estimator of the population mean. The metric in question is undoutebly a measure that we're interested in. 



### The problem resolved
I think the issue comes down to the difference between an estimator and the data. In the model free setting



#causalinference #ml

