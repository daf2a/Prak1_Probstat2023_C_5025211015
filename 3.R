#3a
x = 3
df = 10
dchisq(x, df)

#3b
df <- 10
n <- 500
set.seed(123)
data <- rchisq(n, df)
hist(data, breaks = 20, main = "Histogram Chi-Square", xlab = "Nilai")

#3c
df <- 10
n <- 500
set.seed(123)
data <- rchisq(n, df)
mean(data)
var(data)