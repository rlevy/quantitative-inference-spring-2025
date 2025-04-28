library(tidyverse)
library(lme4)
num_groups <- 10
examples_per_group <- c(5,6,7,8,9,11,12,13,14,15)
alpha <- 0
sigma_e <- 1
sigma_b <- 1
dat <- tibble(group=rep(1:10,times=examples_per_group))
bs <- rnorm(num_groups,0,sigma_b)
dat$b <- bs[dat$group]
dat$y <- dat$b + rnorm(nrow(dat),0,sigma_e)
# The two estimates of the fixed-effects intercept are different:
summary(lm(y ~ 1,dat))
summary(lmer(y ~ 1 + (1 | group),dat))
# Which has the higher standard error?

# We derived mathematically that OLS is unbiased for mixed linear models.
# Let's simulate:
f <- function(seed) {
  set.seed(seed)
  dat$y <- dat$b + rnorm(nrow(dat),0,sigma_e)
  return(coef(lm(y ~ 1,dat)))
}

results <- sapply(1:1000,f)
mean(results)
# Here is your puzzle. How do you think about this?
