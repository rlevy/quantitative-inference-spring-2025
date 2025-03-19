library(dplyr) # Load necessary libraries

set.seed(10) # Set seed for reproducibility

# Number of sites and students per site
n_sites <- 6   # Small number of sites to induce variance uncertainty
n_students_per_site <- 4  # Each student is assigned to ONE teaching method

# Generate student-level data
dat <- expand.grid(site_id = 1:n_sites, student_id = 1:n_students_per_site)

# Assign each student to a teaching method (ensuring between-subjects design)
dat <- dat %>%
  group_by(site_id) %>%
  mutate(method = sample(0:1, size = n(), replace = TRUE)) %>%
  ungroup()

# True parameters
beta_0 <-      -Inf # Intercept (baseline pass probability)
beta_method <- -Inf # effect of teaching method
sigma_site <-   Inf # by-site variance

# Generate site-level random intercepts
sites <- data.frame(site_id = 1:n_sites,
                      u = rnorm(n_sites, mean = 0, sd = sigma_site))

# Merge with site random effects
dat <- left_join(dat, sites, by = "site_id")

# Compute log-odds of passing
dat$logit_p <- beta_0 + beta_method * dat$method + dat$u
dat$p <- exp(dat$logit_p) / (1 + exp(dat$logit_p))  # Log-odds -> probability

# Simulate pass/fail outcome
dat$passed <- rbinom(nrow(data), 1, dat$p)

dat %>% 
  group_by(method) %>%
  summarize(mean_passed=mean(passed))  
  
dat1 <- dat %>%
  group_by(site_id) %>%
  summarize(mean_new_method=mean(method),mean_passed=mean(passed))
print(dat1)




# Fit mixed logit model (random intercept for site)
library(lme4)
model <- glmer(passed ~ method + (1 | site_id), data = dat, family = binomial)

# Display model summary
summary(model)

m0 <- glmer(passed ~ 1 + (1 | site_id), data = dat, family = binomial)
anova(m0,model)

library(brms)
m.brm <- brm(passed ~ method + (1 | site_id), data = dat, family = "bernoulli")
summary(m.brm)