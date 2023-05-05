#2b
x = 4
lambda = 1.8
ppois(x, lambda)

#2c
x = 4
lambda = 1.8
ppois(x, lambda, lower.tail = TRUE)

#2d
x = 4
lambda = 1.8
ppois(x, lambda, lower.tail = FALSE)

#2e
lambda = 1.8
Ex = lambda
sd = sqrt(lambda)
print(Ex)
print(sd)

#2f
hist(rpois(1000, 1.8), breaks = seq(-0.5, 10.5, 1), col = "gray", main = "History Distribusi Poisson", xlab = "Banyak Kematian Kanker Tulang")

#2g
n <- 20
lambda <- 1.8
set.seed(123)
rpois(n, lambda)