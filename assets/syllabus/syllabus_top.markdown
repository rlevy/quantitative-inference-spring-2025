---
layout: home
title: Syllabus
---

## Class Description

  As the empirical domain of brain & cognitive sciences research continues to grow, the data used for scientific inference have become more diverse and complex. These data often require complex analytic techniques not extensively covered in core introductory classes, and the skill to use these techniques appropriately in practice to yield scientifically valid inferences and insights. This spring 2025 course build a foundational understanding and practical competence in concepts in quantitative inference to be obtained inthe first half of the semester by covering key analytic techniques including probability theory, causal inference, Bayesian and frequentist statistical methods, regression, hierarchical/multilevel models, nonparametric models, and high-dimensional/multivariate methods. I place special emphasis on conceptual understanding of quantitative techniques and on ensuring alignment between one's scientific questions and how models are formulated and used in data analysis.


## Class organization

Class sessions will include a combination of lecture, interactive discussion, review, and practicum sessions.

## Intended Audience

Class content will be of interest for students, postdocs, faculty, and researchers in brain & cognitive sciences, psychology, linguistics, and potentially for sister disciplines including computer science, political science, sociology, economics, and other social science fields.

## Prerequisites

There are no formal prerequisites, but the class uses linear algebra, calculus, and involves coding, so if you don't have background in all of these you may find it moves briskly.

## Readings

The readings list will be developed over the course of the semester, and will draw on a variety of readings from multiple fields. There is no ready-made textbook customized to the content we'll be covering, so keep in mind that different readings may vary in the terminology, notation, and framing used for the same fundamental concepts. I also endeavor to provide written lecture notes throughout the semester.

## Software

We will be using the [R](https://www.r-project.org/) statistical computing language, as well as its interface to the [Stan](https://mc-stan.org/) probabilistic programming language, in the class. R is extremely powerful and expressive out of the box, and its extraordinary collection of [community-contributed packages](https://cran.r-project.org/) makes it even more so. In particular I will use packages in the [tidyverse](https://www.tidyverse.org/) extensively, especially for data handling and visualizations, without spending a lot of time teaching them directly. If you don't have much previous experience with R, there are many tutorials and other self-study resources available; I recommend [R for Data Science](https://r4ds.hadley.nz/). The [RStudio](https://posit.co/products/open-source/rstudio/) integrated development environment (IDE) is popular and free; I will use it for the class, though you don't have to.


## Schedule

<div style="text-align:center;">
<!--    <img src="{{ site.url }}{{ site.baseurl }}/assets/images/under_construction.jpg" alt="Quantitative Inference in Brain & Cognitive Sciences, Spring 2025" style="width: 60%; max-width:300px; height:auto; padding-top:10px; padding-bottom:20px;"> -->
    </div>

The schedule is presently **under construction**. On the first day, **Monday February 3**, I will go over some logistics for the class, and introduce a set of core concepts in probability theory that are central to quantitative inference in all sciences and that we will rely on throughout the semester. These include:

 - [Probability space](https://en.wikipedia.org/wiki/Probability_space)
 - [Random variable](https://en.wikipedia.org/wiki/Random_variable)
 - [Joint probability distribution](https://en.wikipedia.org/wiki/Joint_probability_distribution)
 - [Marginal probability distribution](https://en.wikipedia.org/wiki/Marginal_distribution)
 - [Conditional probability](https://en.wikipedia.org/wiki/Conditional_probability)
 - [The Chain Rule](https://en.wikipedia.org/wiki/Chain_rule_(probability))
 - [Bayes' Rule](https://en.wikipedia.org/wiki/Bayes'_theorem)
 - Discrete vs. continuous [probability distributions](https://en.wikipedia.org/wiki/Probability_distribution)
 - [Mean](https://en.wikipedia.org/wiki/Mean), [variance](https://en.wikipedia.org/wiki/Variance), [covariance](https://en.wikipedia.org/wiki/Covariance), and [correlation](https://en.wikipedia.org/wiki/Correlation)
 
In preparation for the class on **Wednesday February 5**, please review these concepts; the links above are to Wikipedia pages but please do whatever additional resource-finding of your own, use of Generative AI, etc., you find most appropriate for your own learning. You can also review the [slides](assets/slides/2025-02-03-intro-probability-slides.pdf) I used on Monday. Reading Chapters 2–3 of my [book draft](https://www.mit.edu/~rplevy/pmsl_textbook/text.html) will give you most of this as well.

Looking farther ahead, we will be moving fairly soon to covering the basics of [causal inference](https://en.wikipedia.org/wiki/Causal_inference), for which the readings are Chapters 1–6 of [Barrett et al., 2025](https://www.r-causal.org/) and Chapters 1–3 of [Hernan & Robins, 2020/2025](https://miguelhernan.org/whatifbook), so you can start reading these.

Here are the slides I used on Wednesday Feb 5: the [final slides for our intro to probability theory](assets/slides/2025-02-05-final-probability-slides.pdf) and [intro to causal inference](assets/slides/2025-02-05-intro-to-causal-inference-with-builds.pdf).

Here is [the first homework assignment](assets/assignments/pset_1/pset_1.pdf), due Friday, February 14.

Slides for Monday Feb 10: [with builds](assets/slides/2025-02-10-intro-causal-inference-with-builds.pdf) and [without builds](assets/slides/2025-02-10-intro-causal-inference-no-builds.pdf)

Slides for Wednesday Feb 12: [with builds](assets/slides/2025-02-12-causal-inference-continued-with-builds.pdf) and [without builds](assets/slides/2025-02-12-causal-inference-continued-no-builds.pdf)

Slides for Tuesday Feb 18 (including Bayes Net material covered 2/12): (causal) Bayes Nets: [with builds](assets/slides/2025-02-18-causal-Bayes-nets-with-builds.pdf) and [without builds](assets/slides/2025-02-18-causal-Bayes-nets-no-builds.pdf); parameter estimation, confidence intervals, hypothesis testing: [with builds](assets/slides/2025-02-18-parameter-estimation-with-builds.pdf) and [without builds](assets/slides/2025-02-18-parameter-estimation-no-builds.pdf); 

Slides for Wednesday Feb 19: confidence intervals and hypothesis testing: [with builds](assets/slides/2025-02-19-confidence-intervals-hypothesis-testing-and-Monte-Carlo-with-builds.pdf) and [without builds](assets/slides/2025-02-19-confidence-intervals-hypothesis-testing-and-Monte-Carlo-no-builds.pdf)

Slides for Monday Feb 24: Monte Carlo: [with builds](assets/slides/2025-02-24-Monte-Carlo-with-builds.pdf) and [without builds](assets/slides/2025-02-24-Monte-Carlo-no-builds.pdf). R file from simple Monte Carlo practicum is [here](assets/resources/Monte-Carlo.R).

Slides for Wednesday Feb 26: [Generalized linear models](assets/slides/2025-02-26-generalized-linear-models.pdf)

Slides for Monday March 3: [Categorical predictors, interactions, logistic regression](assets/slides/2025-03-03-categorical-predictors-interactions-logistic-regression.pdf)


Use this initial time to tune your R skills as well!

