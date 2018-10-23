suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("1.R"))))

set.seed(0)

print(standardize(rnorm(10)))
print(standardize(rnorm(100)))
print(standardize(rnorm(1000)))