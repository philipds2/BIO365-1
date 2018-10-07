# BIO 365 - Assignment 11

### Introduction

The purpose of this assignment is to give you practice coding in R and to help reinforce your understanding of estimating with uncertainty.

Please go to the `BIO365` repository that you created for a previous assignment. Create a directory called `Assignment-11`. As you work through this assignment, please put your R scripts in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`.

### Getting Started

*Please let me know if you see any errors in these problem descriptions. Thanks!*

**This repository contains no expected outputs for this assignment.** You just need to print your answers.

You **can** use R built-in functions (such as `mean` or `sd`) for this assignment.

### Problem Descriptions

The first 4 problems are based on Assignment Problem #18 in Chapter 4 of *The Analysis of Biological Data - 2nd Edition*. *Amorphophallus johnsonii* is a plant growing in West Africa, and it is better known as a "corpseflower." Its common name comes from the fact that when it flowers, it gives off a "powerful aroma of rotting fish and faeces" (Beath 1996). The flowers smell this way because their principal pollinators are carrion beetles, who are attracted to such a smell. Beath (1996) observed the number of carrion beetles (*Phaeochrous amplus*) that arrive per night to flowers of this species. You can download the data they observed from here: http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter04/chap04q18Corpseflowers.csv. In your R scripts, please use the `read_csv` function (tidyverse) to read this file into a `tibble` object. You can specify the above URL instead of a file name when you invoke `read_csv`. Please use R code to answer the following.

1. What is the mean number of beetles per flower? Please print your answer (rounded to 1 decimal place).

2. What is the standard deviation of this estimate of the mean? Please print your answer (rounded to 1 decimal place).

3. Using the "2SE rule of thumb" described in the book, what is **upper limit** of the 95% confidence interval of the mean. Please print your answer (rounded to 1 decimal place).

4. Using the "2SE rule of thumb" described in the book, what is **lower limit** of the 95% confidence interval of the mean. Please print your answer (rounded to 1 decimal place).

The remaining problems are based on Assignment Problem #22 in Chapter 4 of *The Analysis of Biological Data - 2nd Edition*. Nagy (2011) measured the duration of spontaneous embraces at the 2008 Summer Olympic Games in Beijing, China. The data are the durations of hugs, in seconds, of athletes immediately after competing in the finals of an event. Hugs were either with their coach, a supporter (e.g., a team member), or a competitor. Descriptive statistics calculated from the data are in the following table. The value *n* refers to the sample size.

| Relationship | Mean | Standard Deviation | n   |
| ------------ | ---- | ------------------ | --- |
| Coach        | 3.77 | 3.96               | 77  |
| Supporter    | 3.16 | 2.76               | 75  |
| Competitor   | 1.81 | 1.13               | 33  |

5. Using the numbers in the table, calculate the **standard error** of the mean hug duration for **coaches**. Please print your answer (rounded to 2 decimal places).

6. Using the numbers in the table, calculate the **standard error** of the mean hug duration for **supporters**. Please print your answer (rounded to 2 decimal places).

7. Using the numbers in the table, calculate the **standard error** of the mean hug duration for **competitors**. Please print your answer (rounded to 1 decimal place).

8. Using the "2SE rule of thumb", calculate the **lower limit of the 95% confidence interval** of the mean hug duration for **coaches**. Please print your answer (rounded to 2 decimal places).

9. Using the "2SE rule of thumb", calculate the **upper limit of the 95% confidence interval** of the mean hug duration for **coaches**. Please print your answer (rounded to 2 decimal places).

10. Using the "2SE rule of thumb", calculate the **lower limit of the 95% confidence interval** of the mean hug duration for **supporters**. Please print your answer (rounded to 2 decimal places).

11.  Using the "2SE rule of thumb", calculate the **upper limit of the 95% confidence interval** of the mean hug duration for **supporters**. Please print your answer (rounded to 1 decimal place).

12. Using the "2SE rule of thumb", calculate the **lower limit of the 95% confidence interval** of the mean hug duration for **competitors**. Please print your answer (rounded to 2 decimal places).

13.  Using the "2SE rule of thumb", calculate the **upper limit of the 95% confidence interval** of the mean hug duration for **competitors**. Please print your answer (rounded to 1 decimal place).

14. For which of the relationship groups is the possibility of a 3-second mean hug duration **not** plausible? Please print one of the following: Coaches, Supporters, or Competitors.

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all *.R
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.