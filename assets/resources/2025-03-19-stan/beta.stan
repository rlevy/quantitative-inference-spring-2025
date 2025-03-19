data {
  int<lower = 0> n;  // Total number of trials
  int<lower = 0> r;  // number of successes
}
parameters {
  real<lower = 0, upper = 1> p;
}
model {
  // Prior:
  p ~ beta(1,1);
  // Likelihood
  r ~ binomial(n,p);
}
