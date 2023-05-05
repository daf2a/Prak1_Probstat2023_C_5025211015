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

x_t7 <- qt(p_t5, df_t4, lower.tail = TRUE)
x_t7

#5f
df_t5 <- 25
p_t6 <- 0.125

x_t8 <- qt(p_t6, df_t5, lower.tail = FALSE)
x_t8

#5g
df_t6 <- 11
p_t7 <- 0.75

x_t9 <- abs(qt(p_t7/2, df_t6, lower.tail = FALSE))
x_t10 <- -x_t9
x_t9
x_t10


#5h
df_t7 <- 23
p_t8 <- 0.0333

x_t11 <- abs(qt(p_t8/2, df_t7, lower.tail = TRUE))
x_t12 <- -x_t11
x_t11
x_t12