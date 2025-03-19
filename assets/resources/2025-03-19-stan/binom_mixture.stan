data {
  int<lower = 0> n;  // Total number of trials
  int<lower = 0> r;  // number of successes
}
parameters {
  real<lower = 0, upper = 1> p;
}
model {
  // Prior:
  target += log_sum_exp(beta_lpdf(p | 5,20),
                        beta_lpdf(p | 20,5));
  // Likelihood
  r ~ binomial(n,p);
}
