# BIO 365 - Assignment 16

### Introduction

The purpose of this assignment is to give you practice coding in R and to help reinforce your understanding of contingency analysis.

Please go to the `BIO365` Git repository you created for a previous assignment. Create a directory called `Assignment-16`. As you work through this assignment, please put your R scripts in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`. **Each of these scripts should load any R libraries that you need and should download data (using the `read_csv` function), if applicable. Please do not store any of the CSV files in your Git repository.**

### Getting Started

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

### Problem Descriptions

These questions are derived from *The Analysis of Biological Data - 2nd Edition*. Please use R code to answer the following.

1. This problem is based on Assignment Problem 20a from Chapter 9. Please print your answer: "e" if it is an experimental study or "o" if it is an observational study.

2. This problem is based on Assignment Problem 20b from Chapter 9. You can access the data [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter09/chap09q20ALLDaycare.csv). Please print an R vector with two numeric values (**rounded to three decimal places**) that indicate your answers for children *with* ALL or *without* ALL.

3. This problem is based on Assignment Problem 20c from Chapter 9. You can access the data [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter09/chap09q20ALLDaycare.csv). Please print your answer (**rounded to two decimal places**).

4. This problem is based on Assignment Problem 21 from Chapter 9. You can access the data [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter09/chap09q21BlueTermites.csv). Use a 𝜲-squared contingency test to derive a P-value that indicates whether there is a statistically significant difference in toxicity between the blue and white liquids (use the `chisq.test` function). Make sure you turn off continuity correction (look at the documentation to learn how). Please print the P-value only (**do not round**). Also write a comment in the code about what you interpret based on this finding.

5. This problem is based on Assignment Problem 24b from Chapter 9. You can access the data [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter09/chap09q24HeatSterility.csv). Use `ggplot2` to create a stacked bar graph that illustrates the association between sterility and source location (France vs. India). Label the axes appropriately and use a legend to indicate what the colors mean. Your code should save the graph to a file called `5.pdf`. Also write a comment in the code about what you interpret based on this graph.

6. This problem is based on Assignment Problem 24d from Chapter 9. You can access the data [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter09/chap09q24HeatSterility.csv). Find the relative risk of sterility for the Indian population compared to the French population. Please round this number to **three decimal places** and print it. Also write a comment in the code about what you interpret based on this finding.

7. Suppose you wished to evaluate the relationship between university students' year in school and their country of origin. The R code below creates a tibble with the data (you'll need to copy this code into your script). Each row in the tibble represents an individual student. Use Fisher's exact test to calculate a P-value that indicates whether school year differs according to country of origin. Please print this P-value (without rounding). Also write a comment in the code about what you interpret based on this finding.

```
library(tidyverse)

data = tribble(~Year, ~Country,
               "Freshman", "Canada",
               "Freshman", "Canada",
               "Freshman", "Canada",
               "Freshman", "Canada",
               "Freshman", "Canada",
               "Freshman", "Mexico",
               "Freshman", "Mexico",
               "Freshman", "USA",
               "Freshman", "USA",
               "Freshman", "USA",
               "Freshman", "USA",
               "Freshman", "USA",
               "Freshman", "USA",
               "Freshman", "USA",
               "Freshman", "USA",
               "Sophomore", "Canada",
               "Sophomore", "Canada",
               "Sophomore", "Canada",
               "Sophomore", "Mexico",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Sophomore", "USA",
               "Junior", "Canada",
               "Junior", "Canada",
               "Junior", "Canada",
               "Junior", "Canada",
               "Junior", "Canada",
               "Junior", "Canada",
               "Junior", "Canada",
               "Junior", "Mexico",
               "Junior", "Mexico",
               "Junior", "USA",
               "Junior", "USA",
               "Junior", "USA",
               "Junior", "USA",
               "Junior", "USA",
               "Junior", "USA",
               "Senior", "Canada",
               "Senior", "Mexico",
               "Senior", "Mexico",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA",
               "Senior", "USA"
               )
```

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all *.R
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.