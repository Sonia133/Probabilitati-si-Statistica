# Distributia Cauchy

par(mfrow=c(1,2))

x <- seq(-10, 10, 0.1)

loc <- c(0, 0, 0, -2)
scl <- c(0.5, 1, 2, 1)

# Functia de densitate
plot(x, dnorm(x), type = "l", main = "Functia de densitate", xlab = "x", ylab = "dcauchy(x)")
for (i in 1:4)
  lines(x, dcauchy(x, location = loc[i], scale = scl[i], log = FALSE), col = i + 10, ylim = c(0, 2.5))

# Functia de repartitie
plot(x, pnorm(x), type = "l", main = "Functia de repartitie", xlab = "x", ylab = "pcauchy(x)")
for (i in 1:4)
  lines(x, pcauchy(x, location = loc[i], scale = scl[i], log = FALSE), col = i + 10, ylim = c(0, 2.5))



