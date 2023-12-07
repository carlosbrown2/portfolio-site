---
layout: page
title: "Data Validation as Constructing an Argument"
description: "or how to know you your data is correct"
sitemap: false
hide_last_modified: false
---

## Intros
How do you check that your data is "correct"? Well what do we mean by correct? That's right, I'm the Jordan Peterson of data. Many of us have an intuitive sense of what correctness is. Or perhaps we're better at spotting when data **isn't** correct. Strangely, I've never seen a formalism put around understanding this idea. So let me suggest one. It's more of an analogy than a true formalism, but it gives a framework that is extremely helpful to understanding the game. This "formalism" has to do with constructing good arguments. Using the tools of argumentation, we can also construct good (correct) data. Let's see how.

## Good Arguments
In constructing good arguments, there are two main distinctions. Arguments can be valid and arguments can be sound. Valid arguments have a logical form where the conclusion follows from the premises. Take the classic socratic syllogism

> All men are mortal
> Socrates is a man
> Therefore, Socrates is mortal

In a valid argument, the premises can still be wrong, which means that the conclusion would be wrong. The point of validity is that given a set of true premises, the conclusion logically follows from them and is true. If the premises of a valid argument are true, the conclusion cannot be false. A correct argument, one where you can say that it is true, is called a sound argument. A sound argument is valid, and because it has true premises, the conclusion is true. All sound arguments are valid, but not all valid arguments are sound. The form of an argument is a good starting place but is not enough. Where do we see valid arguments that are still incorrect? Check this one out.

If Socrates is an alien, then world peace will break out

Socrates is an alien

Therefore, world peace will break out

The formal language puts it as such

``` 
If P, then Q

P

/------------

therefore, Q
```
This formal argument, expressed in logical notation, shows that Q necessarily follows from P (showing a causal link) between the two. We see that P is true, therefore Q follows. Since these are variables, they can take any assignment that is self consistent. When we start saying outlandish things like "Socrates is an alien", you obtain an argument that is incorrect, but still valid in its basic form. Validity is not enough. We need soundness too.

Why is this helpful? A framework that applies to data immediately falls out. We can transfer the ideas of validity and soundness to the data sphere, directly. We can see whether the data has "validity" and "soundness". Both are necessary for data to be correct.

Validity has to do with the form of the data, while soundness builds on validity and has more to do with the truth of a statement or set of statements.

Here's how we can apply these ideas to data.


## Examples
### Validity 
- Duplicates/Uniqueness checks - for sets of features you expect to be unique, do you find duplicates?
- Internal congruence - i.e. do the percentages add up to 100, or the probabilities to 1?
- Null checks - are the number of null values acceptable? Should nulls be allowed at all?
- Counts - do you have the expected amount data?
- Usefulness - can this data be used by downstream processes/algorithms?

Understand that just as an argument can be valid and yet contains false premises, we handle data that can pass all of the above checks for validity, and we still get the wrong answer.

### Soundness
- Schema checks - columns, data types, EDA type stuff
- Source checks - forget that the genetic fallacy exists, are you pulling from the correct/best source?
- Date range checks - is the date range correct, or did you filter the partitioned by date table correctly?
- Validate using another source/method - think of it like a reproducibility study, do the results from this other person or from yourself using another method match what was done before?

## Application
Building checks like these into your workflow will pay dividends far into the future. The great thing is that you don't need a lot of time or effort to perform most of them. Thinking about the data in terms of validity and soundness gives you a framework to construct more checks that are pertinent for your use case. There are plenty of programming packages and tools that help perform data validation. Having the why will make you more effective with whatever tool you choose.

### Closing Exercise
As a closing exercise, I encourage you to think of other types of data checks not listed here. Do they pertain to validity, soundness, or a combination of both?


