# Regresie simpla
modelRegresieSimpla <- lm(stackloss$stack.loss ~ stackloss$Acid.Conc., data = stackloss)
plot(stackloss$stack.loss ~ stackloss$Acid.Conc.)
abline(modelRegresieSimpla)
summary(modelRegresieSimpla)

# Regresie multipla
modelRegresieMultipla <- lm(stackloss$stack.loss ~ stackloss$Water.Temp + stackloss$Acid.Conc. + stackloss&Air.Flow, data = stackloss)
layout(matrix(c(1, 2, 3, 4), 2, 2))
plot(modelRegresieMultipla)
summary(modelRegresieMultipla)


# Variabila noua pentru acest set de date
stackloss$Water.Vol = runif(21, 0.2, 0.8)

print(stackloss)

# Regresie simpla cu noua variabila
modelRegresieSimpla2 <- lm(stackloss$stack.loss ~ stackloss$Water.Vol, data = stackloss)
plot(stackloss$stack.loss ~ stackloss$Water.Vol)
abline(modelRegresieSimpla2)
summary(modelRegresieSimpla2)



set.seed(100)  # setting seed to reproduce results of random sampling
trainingRowIndex <- sample(1:nrow(stackloss), 0.8*nrow(stackloss))  # row indices for training data
trainingData <- stackloss[trainingRowIndex, ]  # model training data
testData  <- stackloss[-trainingRowIndex, ]   # test data


lmMod <- lm(stackloss$stack.loss ~ stackloss$Water.Vol, data=trainingData, data = stackloss)  # build the model
distPred <- predict(lmMod, testData)  # predict distance
plot(distPred)

