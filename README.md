# Laporan Praktikum Probabilitas dan Statistika

## Pendahuluan

Laporan praktikum ini disusun sebagai tugas dari mata kuliah Probabilitas dan Statistika kelas C. Praktikum ini membahas tentang distribusi probabilitas dan penggunaan distribusi tersebut dalam beberapa contoh kasus.

Nama Praktikan : Muhammad Daffa Ashdaqfillah\
NRP Praktikan : 5025211015
<br /> <br />

## **Modul I Distribusi Probabilitas**

### 1. Pendistribusian Banyak Bayi Laki-laki

a. Dalam soal tersebut, diminta untuk menghitung probabilitas jumlah bayi laki-laki dalam 10 kelahiran, di mana probabilitas bayi laki-laki dalam setiap kelahiran adalah konstan. Oleh karena itu, metode yang cocok untuk menghitung adalah dengan distribusi binomial
<br />

b. Probabilitas tepat 3 bayi berjenis kelamin laki-laki adalah:

```R
p_laki_laki = 0.488
n_bayi = 10
dbinom(3, n_bayi, p_laki_laki)
```

Screenshoot : <br />
![1b](/img/1b.png)

Penjelasan : Probabilitas tepat 3 bayi berjenis kelamin laki-laki adalah hasil dari fungsi dbinom(3, n_bayi, p_laki_laki) yang menghitung probabilitas binomial dengan 10 percobaan (kelahiran) dan probabilitas keberhasilan (bayi laki-laki) sebesar 0,488 pada percobaan tersebut.
<br />

c. Probabilitas kurang dari 3 bayi berjenis kelamin laki-laki adalah:

```R
p_laki_laki = 0.488
n_bayi = 10
pbinom(2, n_bayi, p_laki_laki)
```

Screenshoot : <br />
![1c](/img/1c.png)

Penjelasan : Probabilitas kurang dari 3 bayi berjenis kelamin laki-laki adalah hasil dari fungsi pbinom(2, n_bayi, p_laki_laki) yang menghitung probabilitas kumulatif binomial dengan 10 percobaan (kelahiran) dan probabilitas keberhasilan (bayi laki-laki) sebesar 0,488 pada percobaan tersebut, pada kategori kurang dari 3 (yaitu 0, 1, atau 2 bayi laki-laki).
<br />

d. Probabilitas tiga atau lebih bayi berjenis kelamin laki-laki adalah:

```R
p_laki_laki = 0.488
n_bayi = 10
pbinom(2, n_bayi, p_laki_laki, lower.tail = FALSE)
```

Screenshoot : <br />
![1d](/img/1d.png)

Penjelasan : Probabilitas tiga atau lebih bayi berjenis kelamin laki-laki adalah hasil dari fungsi pbinom(2, n_bayi, p_laki_laki, lower.tail = FALSE) yang menghitung probabilitas kumulatif binomial dengan 10 percobaan (kelahiran) dan probabilitas keberhasilan (bayi laki-laki) sebesar 0,488 pada percobaan tersebut, pada kategori tiga atau lebih (yaitu 3, 4, ..., atau 10 bayi laki-laki).
<br />

e. Nilai harapan banyak bayi laki-laki adalah:

```R
p_laki_laki = 0.488
n_bayi = 10
q = 1-p_laki_laki
Ex <- (n_bayi*p_laki_laki)
print(Ex)
```

Nilai simpangan baku banyak bayi laki-laki adalah:

```R
sd <- sqrt(n_bayi*p_laki_laki*q)
print(sd)
```

Screenshoot : <br />
![1e](/img/1e.png)

Penjelasan : Nilai harapan banyak bayi laki-laki dapat dihitung dengan rumus E(X) = n _ p, di mana n adalah banyak percobaan (10 kelahiran) dan p adalah probabilitas keberhasilan (bayi laki-laki) pada setiap percobaan. Sedangkan nilai simpangan baku dapat dihitung dengan rumus SD = sqrt(n _ p \* q), di mana q adalah probabilitas kegagalan (bayi perempuan) pada setiap percobaan.
<br />

f. Histogram pendistribusian banyak bayi laki-laki:

```R
x <- 0:10
p_laki_laki = 0.488
n_bayi = 10
freq <- dbinom(x, n_bayi, p_laki_laki)
barplot(freq, names.arg = x, main = "Histogram Banyak Bayi Laki-laki", xlab = "Banyak Bayi Laki-laki", ylab = "Probability")
```

Screenshoot : <br />
![1f](/img/1f.png)

Penjelasan : Histogram pendistribusian banyak bayi laki-laki dibuat dengan menggunakan fungsi barplot, di mana freq adalah vektor probabilitas distribusi binomial pada setiap nilai x (0 hingga 10) yang dihitung dengan menggunakan fungsi dbinom(x, n_bayi, p_laki_laki).
<br /> <br />

### 2. Pendistribusian Banyak Kematian akibat Kanker Tulang

a. Dalam soal tersebut, diminta untuk menghitung probabilitas jumlah kematian akibat kanker tulang di antara pekerja pabrik ban, di mana probabilitas kematian akibat kanker tulang adalah konstan. Oleh karena itu, metode yang cocok untuk menghitung adalah dengan **distribusi poisson**
<br />

b. Probabilitas 4 kematian akibat kanker tulang di antara pekerja pabrik ban adalah:

```R
x = 4
lambda = 1.8
ppois(x, lambda)
```

Screenshoot : <br />
![2b](/img/2b.png)

Penjelasan : Untuk menghitung probabilitas 4 kematian akibat kanker tulang di antara pekerja pabrik ban, menggunakan fungsi ppois() pada R dengan memasukkan nilai x=4 (jumlah kematian yang diinginkan) dan nilai lambda=1.8 (parameter distribusi Poisson yang diberikan pada soal).<br />

c. Peluang paling banyak 4 kematian akibat kanker tulang adalah:

```R
x = 4
lambda = 1.8
ppois(x, lambda, lower.tail = TRUE)
```

Screenshoot : <br />
![2c](/img/2c.png)

Penjelasan : Untuk menghitung peluang paling banyak 4 kematian akibat kanker tulang di antara pekerja pabrik ban, menggunakan fungsi ppois() pada R dengan memasukkan nilai x=4 (jumlah kematian yang diinginkan) dan nilai lambda=1.8 (parameter distribusi Poisson yang diberikan pada soal) serta lower.tail=TRUE (untuk menghitung peluang dari 0 hingga 4 kematian).<br />

d. Peluang lebih dari 4 kematian akibat kanker tulang adalah:

```R
x = 4
lambda = 1.8
ppois(x, lambda, lower.tail = FALSE)
```

Screenshoot : <br />
![2d](/img/2d.png)

Penjelasan : Untuk menghitung peluang lebih dari 4 kematian akibat kanker tulang di antara pekerja pabrik ban, menggunakan fungsi ppois() pada R dengan memasukkan nilai x=4 (jumlah kematian yang diinginkan) dan nilai lambda=1.8 (parameter distribusi Poisson yang diberikan pada soal) serta lower.tail=FALSE (untuk menghitung peluang dari 5 kematian hingga tak terhingga).<br />

e. Nilai harapan banyak kematian akibat kanker tulang adalah:

```R
lambda = 1.8
Ex = lambda
print(Ex)
```

Screenshoot : <br />
![2e](/img/2e.png)

Penjelasan : Untuk menghitung nilai harapan banyak kematian akibat kanker tulang di antara pekerja pabrik ban, cukup menggunakan nilai lambda yang diberikan pada soal. Karena nilai harapan distribusi Poisson adalah sama dengan nilai lambda.

Nilai simpangan baku banyak kematian akibat kanker tulang adalah:

```R
sd = sqrt(lambda)
print(sd)
```

Penjelasan : Untuk menghitung simpangan baku, cukup menggunakan nilai lambda yang diberikan pada soal. Karena simpangan baku distribusi Poisson adalah sama dengan nilai akar dari lambda.<br />

f. Histogram pendistribusian banyak kematian akibat kanker tulang:

```R
hist(rpois(1000, 1.8), breaks = seq(-0.5, 10.5, 1), col = "gray", main = "History Distribusi Poisson", xlab = "Banyak Kematian Kanker Tulang")
```

Screenshoot : <br />
![2f](/img/2f.png)

Penjelasan : Fungsi hist untuk menghasilkan histogram dari distribusi Poisson dengan parameter lambda = 1.8. menggunakan 1000 pengamatan untuk menghasilkan distribusi yang lebih halus. Parameter breaks digunakan untuk menentukan rentang kelas dalam histogram. <br />

g. Simulasi pendistribusian banyak kematian akibat kanker tulang:

```R
n <- 20
lambda <- 1.8
set.seed(123)
rpois(n, lambda)
```

Screenshoot : <br />
![2g](/img/2g.png)

Penjelasan : Fungsi rpois untuk melakukan simulasi dari distribusi Poisson dengan parameter lambda = 1.8. menggunakan nilai n = 20 untuk menghasilkan 20 pengamatan simulasi. Fungsi set.seed digunakan untuk memastikan hasil yang sama setiap kali menjalankan simulasi. <br />

h. Dari hasil simulasi, dapat melihat bahwa distribusi kematian akibat kanker tulang di antara pekerja pabrik ban mengikuti distribusi Poisson dengan parameter lambda sr 1,8. Hal ini konsisten dengan hasil perhitungan menggunakan distribusi Poisson. Oleh karena itu, dapat disimpulkan bahwa simulasi mendukung hasil perhitungan sebelumnya.<br /> <br />

### 3. Distribusi Chi-Square

a. Fungsi probabilitas dari distribusi Chi-Square dengan v = 10 adalah:

```R
x = 3
df = 10
dchisq(x, df)
```

Screenshoot : <br />
![3a](/img/3a.png)

Penjelasan : Untuk menghitung fungsi probabilitas dari distribusi Chi-Square, menggunakan fungsi dchisq() pada R dengan memasukkan nilai x=3 (nilai yang diinginkan) dan nilai df=10 (parameter distribusi Chi-Square yang diberikan pada soal).<br />

b. Histogram dari distribusi Chi-Square dengan 500 data acak:

```R
df <- 10
n <- 500
set.seed(123)
data <- rchisq(n, df)
hist(data, breaks = 20, main = "Histogram Chi-Square", xlab = "Nilai")
```

Screenshoot : <br />
![3b](/img/3b.png)

Penjelasan : Histogram dari distribusi Chi-Square dapat dibuat dengan menghasilkan sejumlah data acak dari distribusi tersebut menggunakan fungsi rchisq() pada R dan kemudian menampilkan histogram dari data tersebut menggunakan fungsi hist(). <br />

c. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square dengan v = 10 adalah:

```R
df <- 10
n <- 500
set.seed(123)
data <- rchisq(n, df)
mean(data)
var(data)
```

Screenshoot : <br />
![3c](/img/3c.png)

Penjelasan : Untuk menghitung nilai rataan dan varian dari distribusi Chi-Square, menggunakan fungsi mean() dan var() pada R dengan memasukkan data yang dihasilkan dari fungsi rchisq() pada soal sebelumnya.<br />

### 4. Distribusi Normal

a. Fungsi probabilitas dari distribusi Normal dengan mean = 45 dan sd = 5 adalah:

```R
mean_normal <- 45
sd_normal <- 5

x_normal <- seq(0, 90, 0.1)
y_normal <- dnorm(x_normal, mean_normal, sd_normal)
```

Probabilitas P(X1 ≤ x ≤ X2), dengan X1 = 5 dan X2 = 6 adalah:

```R
x1 <- 5
x2 <- 6

p_normal <- pnorm(x2, mean_normal, sd_normal) - pnorm(x1, mean_normal, sd_normal)
p_normal
```

z-score untuk X1 adalah:

```R
z_x1 <- (x1 - mean_normal) / sd_normal
z_x1
```

z-score untuk X2 adalah:

```R
z_x2 <- (x2 - mean_normal) / sd_normal
z_x
```

Plot data bann acak dalam bentuk grafik:

```R
set.seed(123)
data_acak <- rnorm(1000, mean = 50, sd = 10)
x1 <- floor(mean(data_acak))
x2 <- ceiling(mean(data_acak))

hist(data_acak, breaks = 50, main = "Histogram Distribusi Normal", xlab = "x", ylab = "Density")
abline(v = x1, col = "red", lwd = 2)
abline(v = x2, col = "red", lwd = 2)
```

Screenshoot : <br />
![4a](/img/4a.png)
<br />

b. Histogram dari distribusi Normal dengan breaks = 50:

```R
x = rnorm(1000)
hist(x, breaks = 50, main = "Histogram Distribusi Normal", xlab = "x", ylab = "Density")
lines(x_normal, y_normal, col = "red", lwd = 2)
```

Screenshoot : <br />
![4b](/img/4b.png)

<br />
c. Nilai varian (σ²) dari hasil data bann acak distribusi Normal adalah:

```R
var_normal <- var(data_normal)
var_normal
```

Screenshoot : <br />
![4c](/img/4c.png)

<br />

### 5. Distribusi T-Student

a. Probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan adalah:

```R
df_t <- 6
x_t1 <- -2.34

p_t1 <- pt(x_t1, df_t)
p_t1
```

Screenshoot : <br />
![5a](/img/5a.png)

Penjelasan : Fungsi pt() digunakan untuk menghitung probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan.
<br /><br />
b. Probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan adalah:

```R
x_t2 <- 1.34

p_t2 <- 1 - pt(x_t2, df_t)
p_t2
```

Screenshoot : <br />
![5b](/img/5b.png)

Penjelasan : Fungsi pt() digunakan untuk menghitung probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan.
<br /><br />
c. Probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan adalah:

```R
df_t2 <- 3
x_t3 <- -1.23
x_t4 <- 1.23

p_t3 <- pt(x_t3, df_t2) + (1 - pt(x_t4, df_t2))
p_t3
```

Screenshoot : <br />
![5c](/img/5c.png)

Penjelasan : Fungsi pt() digunakan untuk menghitung probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan.
<br /><br />
d. Probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan adalah:

```R
df_t3 <- 14
x_t5 <- -0.94
x_t6 <- 0.94

p_t4 <- pt(x_t6, df_t3) - pt(x_t5, df_t3)
p_t4
```

Screenshoot : <br />
![5d](/img/5d.png)

Penjelasan : Fungsi pt() digunakan untuk menghitung probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan.
<br /><br />
e. Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut adalah:

```R
df_t4 <- 5
p_t5 <- 0.0333

x_t7 <- qt(p_t5, df_t4, lower.tail = TRUE
```

Screenshoot : <br />
![5e](/img/5e.png)

Penjelasan : Fungsi qt() digunakan untuk menghitung nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut.
<br /><br />

f. Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut adalah:

```R
df_t5 <- 25
p_t6 <- 0.125

x_t8 <- qt(p_t6, df_t5, lower.tail = FALSE)
x_t8
```

Screenshoot : <br />
![5f](/img/5f.png)

Penjelasan : Fungsi qt() digunakan untuk menghitung nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut.
<br /><br />
g. Nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut adalah:

```R
df_t6 <- 11
p_t7 <- 0.75

x_t9 <- abs(qt(p_t7/2, df_t6, lower.tail = FALSE))
x_t10 <- -x_t9
x_t9
x_t10
```

Screenshoot : <br />
![5g](/img/5g.png)

Penjelasan : Fungsi qt() digunakan untuk menghitung nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut.
<br /><br />
h. Nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut adalah:

```R
df_t7 <- 23
p_t8 <- 0.0333

x_t11 <- abs(qt(p_t8/2, df_t7, lower.tail = TRUE))
x_t12 <- -x_t11
x_t11
x_t12
```

Screenshoot : <br />
![5h](/img/5h.png)

Penjelasan : Fungsi qt() digunakan untuk menghitung nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut.
