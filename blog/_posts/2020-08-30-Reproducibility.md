---
layout: post
title: Reproducibility in Data Science
description:
sitemap: false
hide_last_modified: true
---
![Cover Image](/assets/img/blog/hongkong.jpeg){:.lead width="1920" height="1080" loading="lazy"}

## It means more than you think

Science as a pursuit has always had Reproducibility at its core. After all, if a claim is made about the physical world, and the evidence does not support such a claim, it doesn’t matter how much ideology or vested interest the idea has pushing it, there’s no reason for you to believe it. In a seemingly post truth world that we live in, where politicians, the media, and voices on social media propagate information that is often varying shades of dishonest, it pays dividends for your integrity to make  _reproducible_  claims. It’s part and parcel to your job as a data scientist.

I think Reproducibility in data science is less well understood than Reproducibility in more established fields of science. For example, a study can clarify one or two simple claims that have to do with testing the mean difference between two or more groups. Examples include…

1.  Does treatment A make a statistically significant difference over placebo treatment B?
2.  Do groups exposed to differing lengths of stimuli exhibit varying outcomes?
3.  What is the effect size of a treatment?

Since there is generally a publication bias towards statistically significant  [results](http://elsevier.com/connect/scientists-we-want-your-negative-results-too), some research does not get published if its goal is to repeat what other studies have done. However when they are performed, if they do not come to the same conclusion under similar inputs, then it casts doubt on the original claims. The research has not been reproduced.

In the field of  **structural engineering**  (my first career), we used a form of Reproducibility to validate designs performed by other people. Often an engineer would be tasked with designing a bridge, which is an awfully complex hunk of concrete and steel. In case you’ve never been outside, here is a picture of one.

![](https://miro.medium.com/max/1400/0*7xr4pchdiL-UCbFV)

Photo by  [Christopher Burns](https://unsplash.com/@christopher__burns?utm_source=medium&utm_medium=referral)  on  [Unsplash](https://unsplash.com/?utm_source=medium&utm_medium=referral)

Looks complicated huh? That engineer’s design was reviewed with a fine tooth comb many times before it was released to the contractors for construction. Often during the checking process, another engineer will make a design in parallel, given the same initial inputs, and then they compare notes. Same underlying phenomena, but arrived at by two, independent engineers. Any discrepancies usually highlight an inefficiency in the original design, or a point of disagreement on how the bridge should be modeled. The goal was consensus through  **Reproducibility**.

## What is Reproducibility?

There are more  **dimensions**  to Reproducibility than simply obtaining the same result as we have discussed. Mastering all of these dimensions makes it more likely that your work will be useful for people and be utilized to influence decision making at a higher level. Let’s explore

## Same Code

Your code should be well documented and should actually run. Go figure. There are two main factors here for success

1.  **Dependency Management**  — how do you manage 3rd party packages, are they actively maintained, are the versions pinned? Do you have robust control over system level dependencies?
2.  **Environment Management**  — what language version did you build your product in? Will the application environment use the same?

In a data science consulting role, many times these two pieces are neglected and are tacked on later when client delivery becomes more important. Both are crucial because you should expect that the analysis will be run on a different machine than where the code was written, or be executed in someone else’s well manicured environment, and how can you guarantee that they have the same history of package needs, system dependencies, and language versions as you?

## Same Data

[_Data versioning_](https://realpython.com/python-data-version-control/)  is becoming more and more popular. The c[ookie cutter data science](https://drivendata.github.io/cookiecutter-data-science/)  framework has a loose version of this built in. For example in cookie cutter, data is divided into  **raw**,  **interim**,  **processed,** and  **external**  data from third party sources. This intuitive way of splitting data can help you tell the story of data transformation, from its raw format into something able to be analyzed. Building a narrative around any data transformation using data versioning will allow you to validate with stakeholders that your logic is sound and your data can be trusted. The analysis can be extended, or even reverted as necessary which allows you to have the same agility that git offers code, but now in the data.

## Same Random Numbers

Do you use random  [seeds](https://opendatascience.com/properly-setting-the-random-seed-in-ml-experiments-not-as-simple-as-you-might-imagine/)  in your machine learning pipeline? They allow for quick troubleshooting of problems as the pipeline is built out, because they introduce Reproducibility into your model outputs. This is especially important when you use a learning algorithm with random effects in it, like neural nets or random forest. Random numbers will always be a part of machine learning workflows, when train/test splits, cross validation, or optimization takes place to name a few. You can control them with seed numbers. Think of these seed numbers as controlling for a  **confounding**  variable, the random error. If you don’t use seeds, then you don’t know if the change in model outputs, standard errors, importances, etc. is due to random effects or due to a change in the  **hyper-parameters**. To ensure that this randomness is at least temporarily consistent while you build out your product, then setting a random seed controls and eliminates random deviation in your ML pipeline.

## Same Story

Now that we have all of the above steps in place, we want to make sure that our work has an impact that lasts. We want to ensure the conclusions we’ve drawn replicate and persist themselves in the minds of stakeholders. We don’t just want our audience to nod their heads, and take no action on what has been presented. What makes these ideas stick in an effectual way?

_Stories_. Whether it is your supervisor, a client, or C-level executives, a compelling story built around the data is the most effective way to achieve this goal. Our ancestors passed on knowledge this way because it was effective. Nothing has changed, it still works.

Here also is the link between Reproducibility and  **Interpretability**. Telling a story around your data and model, and explaining why it made a prediction (using for example feature importances or  [SHAP](https://github.com/slundberg/shap)  values) leads to the Reproducibility of your conclusions in people’s minds. The idea takes hold because you’ve communicated a compelling narrative, and people know why they should care about it, distilling complex mathematics into something rich and actionable.  **This is the art of the science**. It’s truly a beautiful combination when it all comes together.

## In Summary

What is the point of Reproducibility? To be able to not only have people run the same code and get similar results, but for them to come to the same conclusions, and for that to persist in time,  **on disk and in human memory**. Don’t limit Reproducibility just to virtual environments, or even analytic conclusions, it’s a much richer, and crucial concept than that.

Something to think about: How can you introduce more Reproducibility into your own projects?

Thank you for reading this article! I hope it has been eye opening and informative. Feel free to connect with me on  [Linkedin](https://www.linkedin.com/in/carlos-brown-eit/)  if you have any questions or are just looking to expand your network.

