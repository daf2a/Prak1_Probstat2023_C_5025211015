#4
mean_normal <- 45
sd_normal <- 5

x_normal <- seq(0, 90, 0.1)
y_normal <- dnorm(x_normal, mean_normal, sd_normal)

#4a
x1 <- 5
x2 <- 6

p_normal <- pnorm(x2, mean_normal, sd_normal) - pnorm(x1, mean_normal, sd_normal)
p_normal

z_x1 <- (x1 - mean_normal) / sd_normal
z_x1

z_x2 <- (x2 - mean_normal) / sd_normal
z_x2

set.seed(123)
data_acak <- rnorm(1000, mean = 50, sd = 10)
x1 <- floor(mean(data_acak))
x2 <- ceiling(mean(data_acak))

hist(data_acak, breaks = 50, main = "Histogram Distribusi Normal", xlab = "x", ylab = "Density")
abline(v = x1, col = "red", lwd = 2)
abline(v = x2, col = "red", lwd = 2)

#4b
x = rnorm(1000)
hist(x, breaks = 50, main = "Histogram Distribusi Normal", xlab = "x", ylab = "Density")
lines(x_normal, y_normal, col = "red", lwd = 2)

#4c
var_normal <- var(data_normal)
var_normal