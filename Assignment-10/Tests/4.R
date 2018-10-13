suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("4.R"))))

numVector1 = 1:50
numVector2 = rep(c(1:5), 50)
set.seed(1)
numVector3 = rnorm(1000)

print(round(calcSumOfSquares(numVector1), 8))
print(round(calcSumOfSquares(numVector2), 8))
print(round(calcSumOfSquares(numVector3), 8))