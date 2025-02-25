## 9.S918 2025-02-24: Monte Carlo approximate computation

## Monte Carlo first example: compute the area within the (0,0)--(1,1) square that is inside
## the unit circle centered on the origin

n <- 1000000
pi/4

## for-loop style -- not very R idiom like, not concise, but very flexible
z <- numeric(n)
for(i in 1:n) {
	set.seed(i)
	x <- runif(1,0,1)
	y <- runif(1,0,1)
	z[i] <- ifelse(sqrt(x^2 + y^2) < 1,1,0)
}
mean(z)

## "sapply" style -- very R-idiom, flexible and gives concise code

f <- function(i) {
	set.seed(i)
	x <- runif(1,0,1)
	y <- runif(1,0,1)
	return(ifelse(sqrt(x^2 + y^2) < 1,1,0))
}

mean(sapply(1:n,f))


## vectorized style -- very R/matlab-idiom, I encourage you to get familiar with this
x <- runif(n,0,1)
y <- runif(n,0,1)
i <- ifelse(sqrt(x^2 + y^2) < 1,1,0)
mean(i)