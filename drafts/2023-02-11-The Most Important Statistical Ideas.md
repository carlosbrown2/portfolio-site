---
layout: page
title: "The Most Important Statistical Ideas of the last 50 years"
description: 
sitemap: false
hide_last_modified: false
---

Andrew Gelman and Aki Vehtari published an important paper in 2021. This paper reviews 8 ideas that represent broad categories of statistics and machine learning that have had major advancements made. They also discuss the commonalities and next steps. I wanted to include a review of the review, so to speak, as I think that brevity can enhance the chance that people explore these ideas more. If only you develop a better appreciation for the rapid pace of change, that will be enough. Discussing the common threadds is very important too. Finally, there are even more developments that have occurred since the paper was published and we will discuss the links and future steps as well as points of application so you can implement these techniques yourself.

## Counterfactual Causal Inference

### Potential Outcomes
Previously, the field of statistics had a losse relationship with causality. Most of the time we relied on Randomized Controlled Trials and didn't deal with heterogenous effects. Early on the arenas of descriptive and causal, or rather associative and causal, were not properly teased out. That all changed with the introduction of formalities around counterfactuals and the potential outcomes framework. That this wasn't developed sooner is surprising given the similarities in abstraction between hypothesis testing and counterfactuals. Both posit two different worlds for comparison to come to an insight about the true nature of a parameter. In both, one exists and the other doesn't.

### Causal Discovery
Causal discovery is an exciting area of research that will yield tremendous benefits in the future for the field of statistics. The idea is that given a dataset where you either don't know the causal mechanisms, or you want to verify a hypothesis, you can utilize causal ddiscovery techniques to generate one or more causal graphs for the data generating process. The underlying algorithm seek out statistical dependencies between the data in addition to confounders that obscure causal relationships.

Some of the available techniques include
- Conditional Indepedence Testing
- Greedy Search of DAG Space
- Assymetry based
- Hybrid Approach

Let's describe one algorithm belonging to the Conditional Independence bucket to motivate further study and illustrate how this process could work.

The algorithm is called the PC algorithm. The steps are rouchly as follows
1. Form a fully connected graph using all available features in the dataset
2. Eliminate edges between features that are statistically independent
3. Test for conditional dependencies using the remaining edges
4. Create separation sets for variables if a conditioning variable removes dependencies between those variables
5. Orient colliders using the Separation sets
6. Using constraints (no new colliders and no cycles)

The Greedy Equivalence Search (GES) is the exact opposite, start with no graph and greedily add edges that increase the model fitness score.

## Boostrap and simulation
Oftentimes in practice, an algorithm you want to use cannot be justified because the algo assumptions 

## Overparameterized Models and Regularization

## Bayesian Multilevel Models (BLMs)
We know in this complex world, many factors influence outcomes. Sometimes these factors do not exist on the same level of abstraction.

The fundamental principle of BMLMs is to represent the data as emerging from various levels of variation. For instance, in a study of students' test results, the individual scores may be modeled as a function of both individual- and group-level factors, such as past knowledge or the student's school or teacher. The individual-level variables reflect differences in performance between students within a specific school or teacher, whereas the group-level variables capture performance differences between schools or teachers.

Markov chain Monte Carlo (MCMC) simulation, a Bayesian computing technique, is a popular method for fitting BLMs. To estimate the posterior mean, variance, and credible intervals of the model parameters, MCMC creates samples from the posterior distribution of the model parameters.

All things considered, BMLMs offer an adaptable framework for modeling complicated data with both individual- and group-level variance. In disciplines like social science, psychology, and education, where data frequently reveal complicated hierarchical structures, BMLMs are extensively used.

## Generic Computation Algorithms
This is an interesting section in that it represents the influence of another field on statistics. Like <insert example>, crossover leads to new developments in a field and stats is no different.

## Adaptive Decision Analysis (ADA)

Adaptive decision analysis is an important field in artificial intelligence that involves developing decision-making systems that can learn and improve their performance over time. Bayesian optimization is a popular method for ADA that involves using Bayesian inference to optimize complex functions by iteratively selecting a new point to evaluate based on the previous observations. This method has been applied to a wide range of problems, including optimizing the performance of machine learning models and tuning hyperparameters. [scikit-optimize](https://scikit-optimize.github.io/stable/) is an implementation you may enjoy exploring

Reinforcement learning is another important technique in ADA that involves learning optimal behavior through trial and error (sounds familiar, eh programmers?). This technique has been successfully applied to a wide range of practical tasks, including game playing. For example, the game of Go has long been considered a challenging problem for AI due to the search space of possible moves being larger than the number of atoms in the universe. In 2016, the AlphaGo system, developed by Google DeepMind, defeated the world champion Lee Sedol at Go, demonstrating the power of reinforcement learning in developing adaptive decision-making systems. 

Multi-armed bandits are another important class of problems, which involves balancing the exploration-exploitation tradeoff. In these problems, the decision-maker must balance between trying out new actions (exploration) and exploiting the currently known best action (exploitation). Multi-armed bandits have important applications in areas such as clinical trials, online advertising, and recommendation systems.


## Robust Inference
Model Residuals, Model Misspecification, non-parametric methods. Connection to matching (Gary King) to reduce model dependence, just another fancy term for variance in models.

## Exploratory Data Analysis
This section was a bit surprising to me. The reason being that EDA is such an open ended process, and usually involves more creativity than anything, that it doesn't seem that there should be major developments here. And yet it makes sense. Discovery vs testing fixed hypotheses, where they can be complementary. The authors highlight EDA in comparison to asymptotic theory as two modes of analysis in stats, and the comparison is revealing.

Asymptotic theory is important for inference, as it allows us to gain insights about the population based only on a sample (all of statistics exists because we don't have omniscience and/or infinite resources). However, asymptotic theory is not always sufficient to fully understand the properties of a dataset, especially when the sample size is small or the data is non-normal or non-linear. One classic example is Anscombe's quartet, which consists of four different datasets that have identical summary statistics, but very different distributions and patterns. 

<insert anscombe's picture here>

Asymptotic theory assumes that the sample size is large enough for the law of large numbers to hold, and that the distribution of the estimator converges to a normal distribution as the sample size approaches infinity. However, this assumption may not hold in small sample sizes or when the data is non-normally distributed. This is where exploratory data analysis (EDA) becomes important, as it allows us to visually inspect the data and identify patterns that may not be apparent through asymptotic theory. EDA helps to identify potential issues such as outliers, skewness, and non-linear relationships, which can help inform the choice of appropriate statistical methods for the data. In summary, while asymptotic theory is an important part of statistical inference, it is not always sufficient, and exploratory data analysis is a critical tool for identifying potential issues and guiding the appropriate statistical methodology for a given dataset.

The use of exploratory analysis also enhances ML model creation/evaluation. EDA can assist in locating patterns and trends in the data that can guide the creation of a machine learning model that is appropriate for the modeling task. To improve the performance of the model, EDA might, for instance, assist in locating any outliers or abnormalities in the data that could point to problems with the data or imply the need for preprocessing or transformation activities. In order to make the best choice of features for the model, EDA can also assist in locating features that might have a strong link with the target variable. EDA can also aid in locating any confounding factors or interactions between elements that could influence the model's performance. Finally, all of the techniques of EDA are helpful in evaluating the model's performance. For example, if you want to evaluate multiple metrics simultaneously, or visualize the cross fold performance of a training classifier, EDA is your friend here.

## Even More Developments

### Large Language Models


#statistics #ml 

