# BIO 365 - Assignment 15

### Introduction

The purpose of this assignment is to give you practice coding in R and to help reinforce your understanding of how to fit probability models to frequency data.

Please go to the `BIO365` Git repository you created for a previous assignment. Create a directory called `Assignment-15`. As you work through this assignment, please put your R scripts in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`. **Each of these scripts should load any R libraries that you need and should download data (using the `read_csv` function), if applicable. Please do not store any of the CSV files in your Git repository.**

### Getting Started

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

### Problem Descriptions

These questions are derived from Assignment Problems in *The Analysis of Biological Data - 2nd Edition*. Please use R code to answer the following.

1. Please print an R vector that contains answers to Assignment Problems 11a-11f, in order. If your answer is the binomial distribution, put "b" in the vector. If your answer is the Poisson distribution, put "p" in the vector.

2. This problem is based on Assignment Problem 12. You can download the data from [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08q12SpiritBearGenetics.csv). Please print your answer to 12a, **rounded to 3 decimal places**.

3. This problem is based on Assignment Problem 12. You can download the data from [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08q12SpiritBearGenetics.csv). Please print a vector with three values that are your answers to 12b. These should be expected frequencies for the BB, Bb, and bb genotypes, respectively, **rounded to 1 decimal place**.

4. This problem is based on Assignment Problem 12. You can download the data from [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08q12SpiritBearGenetics.csv). Assuming an alpha value of 0.05, are the differences between observed and expected frequencies statistically significant? Please print a logical value that contains your answer.

5. This problem is based on Assignment Problem 12. You can download the data from [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08q12SpiritBearGenetics.csv). Use `ggplot2` to create a graph that illustrates how much the observed frequencies differed from the expected frequencies. You do not need to use any particular type of chart or any particular colors or labels. But your chart should illustrate these differences. Your code should save your chart to a PDF file called `5.pdf` (but **please don't commit the PDF file to GitHub**).

6. Please print your answer to Assignment Problem 15a. You can download the data from [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08q14Cavalry.csv). **Please round your number to 2 decimal places.**

7. Please print your answer to Assignment Problem 15b. You can download the data from [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08q14Cavalry.csv). You will need to merge categories 3, 4, and >4 before making this calculation because there are few data points for these categories. **Please print a logical value with your answer** (`TRUE` if the Poisson distribution fits the data, `FALSE` if it does not).

8. Please print your answer to Assignment Problem 20a. **Please print your answer as a logical value** (`TRUE` if the observed results are significantly different from expectations at a 0.05 alpha level, `FALSE` if they are not).

9. Please print your answer to Assignment Problem 20b. **Please print your answer as a logical value** (`TRUE` if the observed results are significantly different from expectations at a 0.05 alpha level, `FALSE` if they are not). Add a comment to your code that describes whether the results for this problem and the previous one were different. If they were different, why do you think they were? If they were not different, why do you think they were not?

10. This problem is based on Assignment Problem 21. You can download the data from [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08q21FallingCatsByMonth.csv). Please print an R vector that contains the expected number of cats fallen per month. This vector should have 12 data points, one per month, in order. **Please round your answers to 1 decimal place.**

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all *.R
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.