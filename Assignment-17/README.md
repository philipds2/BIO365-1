# BIO 365 - Assignment 17

### Introduction

The purpose of this assignment is to give you practice coding in R and to help reinforce your understanding of the normal distribution.

Please go to the `BIO365` Git repository you created for a previous assignment. Create a directory called `Assignment-17`. As you work through this assignment, please put your R scripts in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`. **Each of these scripts should load any R libraries that you need and should download data (using the `read_csv` function), if applicable. Please do not store any of the CSV files in your Git repository.**

### Getting Started

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

### Problem Descriptions

These questions are derived from *The Analysis of Biological Data - 2nd Edition*. Please use R code to answer the following.

1. Please write a function called `standardize` that accepts one argument: a vector of numerical values. Your function should convert the data points to Z scores and return a vector that contains the mean and standard deviation of those Z scores.

2. Please write a function called `getPGreater` that accepts two arguments: 1) a vector of numerical values and 2) a single numerical value. Calculate the probability that a value **larger than** the 2nd value would occur by random chance, assuming that the data follow a normal distribution. Please return this value.

3. Please write a function called `getPWithin` that accepts three arguments: 1) a vector of numerical values, 2) a single numerical value, and 3) another numerical value. Calculate the probability that a value *larger than the 2nd value and smaller than the 3rd value** would occur by random chance, assuming that the data follow a normal distribution. Please return this value.

4. Please write a function called `getPWithout` that accepts three arguments: 1) a vector of numerical values, 2) a single numerical value, and 3) another numerical value. Calculate the probability that a value **smaller than the 2nd value and larger than the 3rd value** would occur by random chance, assuming that the data follow a normal distribution. Please return this value. (Although you could use your function from the previous problem to help answer this, I encourage you *not* to use that function so you will get more practice.)

5. This is based on Assignment Problem 23a from the textbook. Please print your answer as a probability (**rounded to three decimal places**).

6. This is based on Assignment Problem 25 from the textbook. Please print an R vector that contains an integer (1, 2, or 8) that indicates your answers for graphs a, b, and c, respectively.

7. Please use [this dataset](https://vincentarelbundock.github.io/Rdatasets/csv/boot/manaus.csv) for this problem. You can read more about the data [here](https://stat.ethz.ch/R-manual/R-devel/library/boot/html/manaus.html). The numbers in the `value` column represent monthly averages of the height) of the Rio Negro river near Manaus, Brazil over much of the 20th century. Use `ggplot2` to create a histogram of these heights and save it to a PDF called `7.pdf`. Make sure to use appropriate axis labels and a descriptive title.

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all *.R
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.