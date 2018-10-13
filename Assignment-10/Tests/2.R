suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("2.R"))))

numVector1 = 1:50
numVector2 = rep(c(1:5), 50)
set.seed(1)
numVector3 = rnorm(1000)

print(round(calcVariance(numVector1), 8))
print(round(calcVariance(numVector2), 8))
print(round(calcVariance(numVector3), 8))