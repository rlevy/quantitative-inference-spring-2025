library(rstan)
library(bayesplot)
library(posterior)
Y <- rnorm(n = 100, mean = 3, sd = 10)
lst_score_data <- list(y = Y, N = length(Y))


fit_score <- stan("normal.stan", data = lst_score_data)

traceplot(fit_score, pars = c("mu", "sigma"))



dat_for_stan <- list(n=10,r=9)
fit_score <- stan("beta.stan", data = dat_for_stan)
traceplot(fit_score, pars = c("p"))
fit_score
mcmc_areas(fit_score,pars="p")

fit_score_mixture <- stan("binom_mixture.stan", data = dat_for_stan)
traceplot(fit_score_mixture, pars = c("p"))
fit_score_mixture
mcmc_areas(fit_score_mixture,pars="p")
