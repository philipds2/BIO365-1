# BIO 365 - Assignment 8

### Introduction

The purpose of this assignment is to help you become familiar with making basic plots in R.

Please go to the `BIO365` repository that you created for a previous assignment. Create a directory called `Assignment-8`. As you work through this assignment, please put the R scripts that you create in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`.

For each problem, your code should create a PDF file. The name of this PDF file should correspond to the problem number. For example, for problem 1, you would generate a file called `1.pdf`.

### Getting Started

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

For this assignment, you will work with data and problems derived from *The Analysis of Biological Data - 2nd Edition*.

In completing this assignment, you may benefit from various packages in the *tidyverse*, including `readr`, `tidyr`, and `dplyr` (load the `tidyverse` library at the top of each script). There is a package in the `tidyverse` for making graphics; it is called `ggplot2`. However, **for now I would like you to use the the base R functions for making graphics**.

For each of problem, create a graph and save it to a PDF file. The following example illustrates how to do this. First, it generates a vector of random numbers. Then it opens a connection to a PDF file with a specific name (you would replace `<problemNum>` with the actual problem number). The `hist` function then creates a histogram of the data. Finally, the `graphics.off()` function closes the connection to the PDF file.

```
data = rnorm(1000)

pdf("<problemNum>.pdf")
hist(data)
graphics.off()
```

### Problem Descriptions

Please use R code to answer the following questions. **Your graphics should match the expected output exactly.** You may need to look at the documentation in R to specify the settings described below.

1. A study by Miller, et al. compared the survival of two kinds of rainbow trout fry (babies): those born in a hatchery and those born in the wild. They released 4000 hatchery fry and 4000 wild fry into a stream that flows into Lake Superior. After one year, the researchers collected data on as many of these trout as they could. You can access the data here: http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q05FrySurvival.csv. Your code should download this data file, load it into R, and create a bar chart that illustrates the number of each type of trout that survived. You'll want to create a contingency table (see the `table` function) and pass that into the `barplot` function. Set the x-axis label to "Source". Set the y-axis label to "Number of fry survived".

2. Using the data described in the previous problem, make a "grouped" bar chart that shows the number of "not caught" fish side by side with those that survived. You can see an example of how to create this type of chart [here](https://www.statmethods.net/graphs/bar.html). Set the x-axis label to "Outcome". Set the y-axis label to "Number of fry". Set the bar colors to blue and orange, respectively. Include a row legend.

3. Researchers evaluated sea anemones to see how they would respond to being startled (cruel, I know!). In a tide pool, the researchers startled 12 individual anemones with a jet of water. After being startled, each anemone would retract their feeding tentacles and then open them some time later. This process was repeated twice. You can access their data here: http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q17AnemonePersonality.csv (The response times were measured in seconds.) Average the startle responses and make a histogram of these averaged values. Set the number of `breaks` to 12 so the bars will be narrow enough to see the shape of the data. Set the title (`main` argument) to "Difference (seconds)". Set the x-axis label to be blank. Set the color inside the boxes to "purple". Also set the color of the lines around the borders of the boxes to "green". (I'm not necessarily recommending that you use these colors in real life...)

4. Using the same data as the previous problem, create a box plot that illustrates the anemones' response times for the two repetitions side by side. Set the labels underneath the boxes to "Response 1" and "Response 2", respectively. Set the title to "Startle responses in sea anemones". Set the y-axis limits so they range between zero and the maximum response time across all observations. Set the y-axis label to "Response time (seconds)". Set the colors of the boxes to "blue" and "red".

5. Using the same data as the previous problem, create a scatterplot that illustrates the relationship between the first set of response times and the second set of response times. (Hint: Use the `plot` function.) Set the x-axis label to "Response 1" and the y-axis label to "Response 2". Set the title to "Startle responses in sea anemones". Set the x-axis and y-axis limits so they range between zero and the maximum response time across all observations.

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

**Important: Please don't add any PDF or data files to your GitHub repository.** Indicate that you want to add the R scripts only (example below). Or you can use a [.gitignore](https://help.github.com/articles/ignoring-files/) file.

```
git add --all *.R
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.
x