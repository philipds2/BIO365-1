source("6.R")

numVector1 = 1:50
numVector2 = rep(c(1:5), 50)

print(round(calcMedian(numVector1), 8))
print(round(calcMedian(numVector2), 8))
