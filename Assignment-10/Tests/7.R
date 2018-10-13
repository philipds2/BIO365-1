suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("7.R"))))

factor1 = factor(c(rep("cold", 10), rep("warm", 27), rep("hot", 19)), levels=c("cold", "warm", "hot"))
factor2 = factor(c(1:10, 1:5, 1:7, 4:9, 3:8))

print(round(calcProportions(factor1), 8))
print(round(calcProportions(factor2), 8))