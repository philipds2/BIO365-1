suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("8.R"))))

freqData1 = cbind(0:14, c(265, 49, 21, 19, 10, 10, 2, 2, 4, 2, 1, 4, 3, 1, 2))
freqData2 = cbind(1:10, c(42, 1000, 12, 1, 819, 29, 292, 737, 291, 2))

print(round(calcMeanFreqData(freqData1), 8))
print(round(calcMeanFreqData(freqData2), 8))