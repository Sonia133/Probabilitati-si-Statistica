# Media pentru fiecare variabila din acest set de date
airFlowMean <- mean(stackloss$Air.Flow)
waterTempMean <- mean(stackloss$Water.Temp)
acidConcentrationMean <- mean(stackloss$Acid.Conc.)
stackLossMean <- mean(stackloss$stack.loss)

# Varianta pentru fiecare variabila din acest set de date
airFlowVariance <- var(stackloss$Air.Flow)
waterTempVariance <- var(stackloss$Water.Temp)
acidConcentrationVariance <- var(stackloss$Acid.Conc.)
stackLossVariance <- var(stackloss$stack.loss)

# Quartilele pentru fiecare variabila din acest set de date
airFlowQuantile <- quantile(stackloss$Air.Flow)
waterTempQuantile <- quantile(stackloss$Water.Temp)
acidConcentrationQuantile <- quantile(stackloss$Acid.Conc.)
stackLossQuantile <- quantile(stackloss$stack.loss)

# Grafic : o quartila pentru fiecare variabila din acest set de date
par(mfrow = c(1, 4))
boxplot(stackloss$Air.Flow, xlab = "Air Flow", col = "magenta")
boxplot(stackloss$Water.Temp, xlab = "Water Temp", col = "magenta")
boxplot(stackloss$Acid.Conc., xlab = "Acid Concentration", col = "magenta")
boxplot(stackloss$stack.loss, xlab = "Stack loss", col = "magenta")
par(mfrow = c(1, 1))

# Grafic : toate quartilele tuturor variabilelor din acest set de date
boxplot(stackloss, names = c("Air Flow", "Water Temp", "Acid Concentration", "Stack Loss"), col = c("magenta", "magenta", "magenta", "magenta"))
