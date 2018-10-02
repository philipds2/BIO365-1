# BIO 365 - Assignment 10

### Introduction

The purpose of this assignment is to give you practice coding in R and to help reinforce your understanding of descriptive statistics.

Please go to the `BIO365` repository that you created for a previous assignment. Create a directory called `Assignment-10`. As you work through this assignment, please put your R scripts in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`.

### Getting Started

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

### Problem Descriptions

Please use R code to do the following. The book contains formulas for each of these calculations. **Preferably, you should *not* use `for` loops. Also, I prefer that you *not* search Google for help because you will learn more working on your own, but I'll leave that up to you.**

1. Write a function called `calcMean`. This function should accept a single argument: a vector of numerical values. **Without** using the built-in `mean` function, your function should calculate the mean of the numerical values and return it.

2. Write a function called `calcVariance`. This function should accept a single argument: a vector of numerical values. **Without** using the built-in `var` function, your function should calculate the variance of the numerical values and return it.

3. Write a function called `calcStandardDev`. This function should accept a single argument: a vector of numerical values. **Without** using the built-in `sd` or `var` functions, your function should calculate the standard deviation of the numerical values and return it.

4. Write a function called `calcSumOfSquares`. This function should accept a single argument: a vector of numerical values. Your function should calculate the sum of squares of the numerical values and return it.

5. Write a function called `calcCoefVar`. This function should accept a single argument: a vector of numerical values. Your function should calculate the coefficient of variation of the numerical values and return it.

6. Write a function called `calcMedian`. This function should accept a single argument: a vector of numerical values. **Without** using the built-in `median` function, your function should calculate the median of the numerical values and return it.

7. Write a function called `calcProportions`. This function should accept one argument: a factor. Your function should calculate the *proportion* of values corresponding to each factor level. Your function should return these values as a named vector. The names should correspond to the factor levels and should be listed in the same order as the factor levels.

8. Write a function called `calcMeanFreqData`. This function should accept a single argument: a matrix with two columns. The first column will contain integers that indicate some type of integer-based observation. The second column will indicate the number of times each observation occurred. Table 3.1-2 in the textbook shows an example of this type of data. Your function should return the mean number of occurrences. The section entitled, "Calculating mean and standard deviation from a frequency table" explains how to approach this.

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all *.R
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.