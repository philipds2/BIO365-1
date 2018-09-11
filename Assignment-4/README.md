# BIO 365 - Assignment 4

### Instructions

The purpose of this assignment is to help you become more familiar with using matrices in R. 

Please go to the `BIO365` repository that you created for a previous assignment. Create a directory called `Assignment-4`. As you work through this assignment, please put the R scripts that you create in that directory.

Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`.

### Problem Descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

For this assignment, you will work with a leukemia dataset from 1999 paper by Golub, et al. (https://www.ncbi.nlm.nih.gov/pubmed/10521349). This dataset is included in this directory in a file called `Golub_GeneExpression.tsv`. Each row contains data for a specific patient tumor. Each column contains data for a specific gene (except the first column, which indicates what type of tumor the patient had). The data values are integers that indicate how highly each gene was expressed in each tumor. Relatively high numbers indicate relatively high expression, and vice versa.

Later in the semester, you will learn more about how to read and manipulate data files. For now, please use the following code to read the data. **You will need to add this code to the top of each R script that you create for this assignment.**

```
data = read.table("Golub_GeneExpression.tsv", sep="\t", header = TRUE, row.names = NULL)

cancerType = factor(data$CancerType)
data = data[,-1]
data = as.matrix(data)
```

Please use R code answer the following questions. Print your answers.

1. There are data points for how many genes?

2. There are data points for how many tumors?

3. What is the maximum gene-expression value across the entire matrix (all rows and columns)?

4. What is the maximum gene-expression value across the first 10 rows?

5. What is the maximum gene-expression value across the first 10 columns?

6. What is the maximum gene-expression value across the first 10 rows *and* the first 10 columns?

7. What is the maximum gene-expression value across all tumors for the gene labeled as `D64015_at`?

8. Which gene is expressed most highly, on average, across all tumors? **Please do not use a `for` loop to answer this question.** Hint: The `apply` and `which` functions are your friends.

9. Calculate the average difference in expression between `AML` and `ALL` tumors for each gene. Which of these genes shows the largest, average difference? When calculating differences between `AML` and `ALL` tumors for a given gene, first calculate the average for `AML` tumors, then calculate the average for `ALL` tumors, then calculate the *absolute value* of the difference between these two averages. **Please do not use a `for` loop to answer this question.** It may be useful to use an anonymous function, together with the `apply` function.

10. What proportion of `AML` tumors have higher expression of the `D64015_at` gene than the average expression for this gene in `ALL` tumors? **Please do not use a `for` loop to answer this question.**


### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

``
git add --all
git commit -m "<message>"
git push origin master
``

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.