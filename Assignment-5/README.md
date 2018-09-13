# BIO 365 - Assignment 5

### Instructions

The purpose of this assignment is to help you become more familiar with using data frames (tibbles) in R.

Please go to the `BIO365` repository that you created for a previous assignment. Create a directory called `Assignment-5`. As you work through this assignment, please put the R scripts that you create in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`.

### Problem Descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

For this assignment, you will analyze a data file that has been provided by [GapMinder](http://www.gapminder.org). Specifically, you will analyze a file called `gapminder-FiveYearData.csv`, which is stored in this directory. This comma-delimited file indicates life expectancy and GDP per capita for 142 countries over the past few decades. To analyze the data, you will need to load it into R. R provides various functions that make it possible to read data files. For example, to read a CSV file, you can use the `read.csv` or `read.table` functions, which are built into R. However, these functions are a bit cumbersome to use. Instead I recommend that you use the `read_csv` function in the `readr` package. The following code illustrates how you would read this file using the `read_csv` function in that package. (First you need to install the `readr` package on your system.)

```{r}
library(readr)

data <- read_csv("gapminder-FiveYearData.csv")
```

**You will need to add this code to the top of each R script that you create for this assignment.** 

Please use R code to answer the following questions. Use the `dplyr` package where helpful. Please print your answers.

1. We have data for how many countries? (Print an integer.)

2. What data do we have for the United States and United Kingdom? Please print a tibble that contains **all** of the data for these countries, sorted by country (in **ascending order**) and year (in **descending** order).

3. Please add a new column (`econMetric`) that is the ratio between GDP per capita and life expectancy (`gdpPercap` divided by `lifeExp`). Then print the first 10 rows of this data for African countries, sorted by the new column (ascending order).

4. What is the average `gdpPercap` (GDP per capita) for each continent? Please print a tibble that lists each continent and the average GDP per capita for each continent, sorted by continent name. Hint: Use the `group_by` and `summarise` functions.

5. Which 5 countries have the lowest average `lifeExp` (life expectancy)? (Print the country name in the first column and the average life expectancy in the second column.)

6. The populations of which 10 countries grew the most between 1952 and 2007? Because population sizes vary so much from one country to another, divide the 2007 value by the 1952 number when calculating growth. (Print the country name in the first column, 1952 population in the second column, 2007 population in the third column, and growth in the fourth column. Sort by the growth column.) Hints:

    a. Create a tibble with data for 1952. Keep only the `country` and `pop` columns. Rename the `pop` column to `1952`.

    b. Create a tibble with data for 2007. Keep only the `country` and `pop` columns. Rename the `pop` column to `2007`.
    
    c. Join these tables based on country.
    
    d. Add a column that divides the 2007 values by the 1952 values.
    
    e. Sort the results and print.

7. Suppose you wished to improve the readability of the data. Rename the column names so that each column name starts with a capital letter, spell out the words, and put underscores between words: Country, Year, Population, Continent, Life_Expectancy, GDP_Per_Capita. Then print the first 10 rows of the tibble (make sure all columns are printed).


### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

``
git add --all
git commit -m "<message>"
git push origin master
``

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.