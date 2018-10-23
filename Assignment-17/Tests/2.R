suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("2.R"))))

set.seed(0)

print(getPGreater(rnorm(1000), -6))
print(getPGreater(rnorm(1000), -4))
print(getPGreater(rnorm(1000), -2))
print(getPGreater(rnorm(1000), 0))
print(getPGreater(rnorm(1000), 2))
print(getPGreater(rnorm(1000), 4))
print(getPGreater(rnorm(1000), 6))