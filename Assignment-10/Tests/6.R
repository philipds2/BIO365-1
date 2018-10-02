source("6.R")

numVector1 = 1:50
numVector2 = rep(c(1:5), 50)
set.seed(1)
numVector3 = rnorm(1000)

print(round(calcMedian(numVector1), 8))
print(round(calcMedian(numVector2), 8))
print(round(calcMedian(numVector3), 8))