suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("3.R"))))

numVector1 = 1:50
numVector2 = rep(c(1:5), 50)
set.seed(1)
numVector3 = rnorm(1000)

print(round(calcStandardDev(numVector1), 8))
print(round(calcStandardDev(numVector2), 8))
print(round(calcStandardDev(numVector3), 8))