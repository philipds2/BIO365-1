suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("1.R"))))

numVector1 = 1:50
numVector2 = rep(c(1:5), 50)
set.seed(1)
numVector3 = rnorm(1000)

print(round(calcMean(numVector1), 8))
print(round(calcMean(numVector2), 8))
print(round(calcMean(numVector3), 8))