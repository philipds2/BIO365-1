# BIO 365 - Assignment 14

### Introduction

The purpose of this assignment is to give you practice coding in R and to help reinforce your understanding of how to analyze proportions.

Please go to the `BIO365` Git repository you created for a previous assignment. Create a directory called `Assignment-14`. As you work through this assignment, please put your R scripts in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`. **Each of these scripts should load any R libraries that you need and should download the data (use the `read_csv` function). Please do not store any of the CSV files in your Git repository.**

### Getting Started

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

### Problem Descriptions

Please use R code to answer the following.

1. Please write a function called `calcBinomP`. This function should calculate the probability of X successes in *n* trials using the formula at the top of page 181 in the textbook. (Please use that formula rather than using the `pbinom` or `dbinom` functions so you will become more familiar with the equation.) Your function should accept three arguments: 1) the number of successes, *X*, 2) the number of trials, *n*, and 3) the probability of success, *p*. Your function should return the probability of *X* successes, **rounded to 4 decimal places**. (Hint: the `choose` function may be helpful.)

2. This problem is based on Assignment Problem 22 from *The Analysis of Biological Data - 2nd Edition*. In a test of Murphy's law, pieces of toast were buttered on one side and then dropped. Murphy's law predicts that they will land butter-side down. You can download the data [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter07/chap07q23ButterSideDown.csv). (Researchers actually did this experiment!) Please print a vector that contains three numbers: 1) the proportion of butter-side down pieces of toast, 2) the lower limit of the 95% confidence interval (calculated using the Agresi-Coull method), and 3) the upper limit of the 95% confidence interval. **Round these numbers to 4 decimal places.**

3. Using the results from the previous problem, is it plausible that there is a 50:50 chance that toast lands butter-side down or butter-side up? Please print a logical value that indicates your answer (`TRUE` for yes or `FALSE` for no). Please also add a comment in your code that explains your answer.

4. This problem is based on Assignment Problem 24 from *The Analysis of Biological Data - 2nd Edition*. Each member of a genetics class grows 12 pea plants from an independent pea family. Each family is expected to have 3/4 plants with smooth peas and 1/4 plants with wrinkled peas. Please print a vector that contains three numbers: 1) the expected number of *wrinkled* pea plants that a student will see, on average, in her 12 plants, 2) the standard deviation of the *proportion* of wrinkled pea plants per student, 3) the predicted proportion of students who would see *exactly* 2 wrinkled pea plants in their sample. (You may use the `dbinom` function to calculate this.) **Round these numbers to 4 decimal places** (even though one of these values is an integer).

5. This problem is based on Assignment Problem 26 from *The Analysis of Biological Data - 2nd Edition*. Researchers conducted a blind taste test to evaluate whether people prefer food typically eaten by humans or dogs. They presented 18 college-educated adults with unlabeled samples of dog food and meat products meant for humans (duck liver mousse, pork liver pâté, liverwurst, and Spam). Participants were asked to rank their preference for these foods. You can find the results of their survey [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter07/chap07q26DogFoodPate.csv). The data file indicates whether people ranked dog food *first* on their list or not. Based on these results, should we conclude that people are less likely to prefer dog food over human food than would be expected by chance? Please write code to perform this analysis, and print a logical value that indicates your answer. Remember that the research participants were selecting their favorite out of *five* options. (Hint: use the `pbinom` function.)

6. This problem is based on Assignment Problem 28 from *The Analysis of Biological Data - 2nd Edition*. Biff and Dilara were having an argument over what fraction of people would likely go out of their way to drive over a live organism if it were standing innocently by the side of the road. Dilara guessed that fewer than 2% of people would behave that way. Biff guessed that the fraction would be 5%. To settle the debate, they analyzed data from an experiment in which a rubber facsimile of a turtle, a tarantula spider, a snake, or a leaf were placed on the paved shoulder of a two-way road. You can find the results of their experiment [here](http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter07/chap07q28RoadKill.csv). Assume that each vehicle represents an independent trial and that the probability of someone attempting to flatten the rubber organism is the same for each organism. Please write code to determine whether these results are consistent with a fraction of either 2% or 5% (do they fall within the 95% confidence interval?). Please print a vector that contains two logical values that indicate your conclusions for 2% and 5%, respectively.

7. This problem is based on Assignment Problem 29 from *The Analysis of Biological Data - 2nd Edition*. *Enterococcus* bacteria are part of the normal intestinal flora of humans, but some strains can cause disease. In U.S. hospitals, 30% of pathogenic isolates are resistant to the antibiotic vancomycin. Assume that seven independent pathogenic isolates have been extracted from patients and tested for resistance. Calculate the probability that 0, 1, 2, 3, 4, 5, 6, or 7 of the isolates are resistant to vancomycin. Please print a vector with these values (in the order mentioned above). **Round these numbers to 4 decimal places.**

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all *.R
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.