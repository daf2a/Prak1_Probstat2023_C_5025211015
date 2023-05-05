#1b
p_laki_laki = 0.488
n_bayi = 10
dbinom(3, n_bayi, p_laki_laki)

#1c
p_laki_laki = 0.488
n_bayi = 10
pbinom(2, n_bayi, p_laki_laki)

#1d
p_laki_laki = 0.488
n_bayi = 10
pbinom(2, n_bayi, p_laki_laki, lower.tail = FALSE)

#1e
p_laki_laki = 0.488
n_bayi = 10
q = 1-p_laki_laki
Ex <- (n_bayi*p_laki_laki)
sd <- sqrt(n_bayi*p_laki_laki*q)
print(Ex)
print(sd)

#1f
x <- 0:10
p_laki_laki = 0.488
n_bayi = 10
freq <- dbinom(x, n_bayi, p_laki_laki)
barplot(freq, names.arg = x, main = "Histogram Banyak Bayi Laki-laki", xlab = "Banyak Bayi Laki-laki", ylab = "Probability")
