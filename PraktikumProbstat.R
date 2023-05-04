library(ggplot2)
library(dplyr)

#1
p_laki_laki <- 0.488
n_bayi <- 10

#1b
p_tepat_3_laki_laki <- dbinom(3, n_bayi, p_laki_laki)
p_tepat_3_laki_laki

#1c
p_kurang_dari_3_laki_laki <- pbinom(2, n_bayi, p_laki_laki)
p_kurang_dari_3_laki_laki

#1d
p_tiga_atau_lebih_laki_laki <- sum(dbinom(3:n_bayi, n_bayi, p_laki_laki))
p_tiga_atau_lebih_laki_laki

#1e
mu_banyak_bayi_laki_laki <- n_bayi * p_laki_laki
mu_banyak_bayi_laki_laki

sigma_banyak_bayi_laki_laki <- sqrt(n_bayi * p_laki_laki * (1 - p_laki_laki))
sigma_banyak_bayi_laki_laki

#1f
ggplot(pendistribusian_bayi_laki_laki, aes(x)) +
    geom_histogram(aes(y = ..density..), binwidth = 1, color = "black", fill = "white") +
    geom_density(alpha = .2, fill = "#FF6666") +
    ggtitle("Histogram Pendistribusian Banyak Bayi Laki-laki") +
    xlab("Banyak Bayi Laki-laki") +
    ylab("Density")

#2
lambda_kematian_tulang <- 1.8

pendistribusian_kematian_tulang <- data.frame(x = 0:10) %>%
    mutate(prob = dpois(x, lambda_kematian_tulang))

ggplot(pendistribusian_kematian_tulang, aes(x, prob)) +
    geom_bar(stat = "identity") +
    ggtitle("Pendistribusian Banyak Kematian Akibat Kanker Tulang") +
    xlab("Banyak Kematian") +
    ylab("Probabilitas")

#2b
p_4_kematian_tulang <- dpois(4, lambda_kematian_tulang)
p_4_kematian_tulang

#2c
p_paling_banyak_4_kematian_tulang <- ppois(4, lambda_kematian_tulang)
p_paling_banyak_4_kematian_tulang

#2d
p_lebih_dari_4_kematian_tulang <- 1 - p_paling_banyak_4_kematian_tulang
p_lebih_dari_4_kematian_tulang

#2e
mu_banyak_kematian_tulang <- lambda_kematian_tulang
mu_banyak_kematian_tulang

sigma_banyak_kematian_tulang <- sqrt(lambda_kematian_tulang)
sigma_banyak_kematian_tulang

#2f
ggplot(pendistribusian_kematian_tulang, aes(x)) +
    geom_histogram(aes(y = ..density..), binwidth = 1, color = "black", fill = "white") +
    geom_density(alpha = .2, fill = "#FF6666") +
    ggtitle("Histogram Pendistribusian Banyak Kematian Akibat Kanker Tulang") +
    xlab("Banyak Kematian") +
    ylab("Density")

#2g
banyak_simulasi <- 10000

simulasi_kematian_tulang <- rpois(banyak_simulasi, lambda_kematian_tulang)

ggplot(data.frame(kematian_tulang = simulasi_kematian_tulang), aes(kematian_tulang)) +
    geom_histogram(aes(y = ..density..), binwidth = 1, color = "black", fill = "white") +
    geom_density(alpha = .2, fill = "#FF6666") +
    ggtitle("Simulasi Pendistribusian Banyak Kematian Akibat Kanker Tulang") +
    xlab("Banyak Kematian") +
    ylab("Density")


#3a
v_chi_square <- 10

x_chi_square <- seq(0, 30, 0.1)
y_chi_square <- dchisq(x_chi_square, v_chi_square)

ggplot(data.frame(x = x_chi_square, y = y_chi_square), aes(x, y)) +
    geom_line() +
    ggtitle("Fungsi Probabilitas Distribusi Chi-Square") +
    xlab("x") +
    ylab("f(x)")

#3b
banyak_data_chi_square <- 500

simulasi_chi_square <- rchisq(banyak_data_chi_square, v_chi_square)

ggplot(data.frame(chi_square = simulasi_chi_square), aes(chi_square)) +
    geom_histogram(aes(y = ..density..), binwidth = 1, color = "black", fill = "white") +
    geom_density(alpha = .2, fill = "#FF6666") +
    ggtitle("Histogram Distribusi Chi-Square") +
    xlab("x") +
    ylab("Density")

#3c
mu_chi_square <- v_chi_square
mu_chi_square

sigma_chi_square <- sqrt(2 * v_chi_square)
sigma_chi_square

#4
mean_normal <- 45
sd_normal <- 5

x_normal <- seq(0, 90, 0.1)
y_normal <- dnorm(x_normal, mean_normal, sd_normal)

ggplot(data.frame(x = x_normal, y = y_normal), aes(x, y)) +
    geom_line() +
    ggtitle("Fungsi Probabilitas Distribusi Normal") +
    xlab("x") +
    ylab("f(x)")

#4a
x1 <- 5
x2 <- 6

p_normal <- pnorm(x2, mean_normal, sd_normal) - pnorm(x1, mean_normal, sd_normal)
p_normal

z_x1 <- (x1 - mean_normal) / sd_normal
z_x1

z_x2 <- (x2 - mean_normal) / sd_normal
z_x2

data_normal <- c(11, 1, 2, 4, 2, 6, 3, 10, 11, 5, 3, 6, 8)

x1 <- floor(mean(data_normal))
x2 <- ceiling(mean(data_normal))

ggplot(data.frame(data = data_normal), aes(data)) +
    geom_histogram(aes(y = ..density..), binwidth = 1, color = "black", fill = "white") +
    geom_density(alpha = .2, fill = "#FF6666") +
    geom_vline(xintercept = x1, color = "red", size = 1) +
    geom_vline(xintercept = x2, color = "red", size = 1) +
    ggtitle("Histogram Distribusi Normal") +
    xlab("x") +
    ylab("Density")

#4b
ggplot(data.frame(x = x_normal, y = y_normal), aes(x)) +
    geom_histogram(aes(y = ..density..), breaks = 50, color = "black", fill = "white") +
    geom_density(alpha = .2, fill = "#FF6666") +
    ggtitle("Histogram Distribusi Normal") +
    xlab("x") +
    ylab("Density")

#4c
var_normal <- var(data_normal)
var_normal

#5a
df_t <- 6
x_t1 <- -2.34

p_t1 <- pt(x_t1, df_t)
p_t1

#5b
x_t2 <- 1.34

p_t2 <- 1 - pt(x_t2, df_t)
p_t2

#5c
df_t2 <- 3
x_t3 <- -1.23
x_t4 <- 1.23

p_t3 <- pt(x_t3, df_t2) + (1 - pt(x_t4, df_t2))
p_t3

#5d
df_t3 <- 14
x_t5 <- -0.94
x_t6 <- 0.94

p_t4 <- pt(x_t6, df_t3) - pt(x_t5, df_t3)
p_t4

#5e
df_t4 <- 5
p_t5 <- 0.0333

x_t7 <- qt(p_t5, df_t4, lower.tail = TRUE