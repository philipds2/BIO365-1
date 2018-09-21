# BIO 365 - Assignment 6

### Instructions

The purpose of this assignment is to help you become more familiar with using data frames and tidying data in R.

Please go to the `BIO365` repository that you created for a previous assignment. Create a directory called `Assignment-6`. As you work through this assignment, please put the R scripts that you create in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`.

### Data Files

For this assignment, you will work with data from an article by Meadows, et al. entitled, "[Bacterial communities on classroom surfaces vary with human contact](https://www.ncbi.nlm.nih.gov/pubmed/24602274)". This article describes a study in which researchers collected bacterial samples from various locations within a college classroom to understand which bacteria were located in which locations. Included in this directory are three tab-delimited data files. These have been modified slightly from what Meadow, et al. provided with their paper.

* **swabs.tsv** This file contains information about swabs that were performed in various locations around the classroom to detect bacterial populations present in those locations. Please refer to Meadow, et al. article for additional information about the variables that are included in this file.

* **counts.tsv** This file contains the operational taxonomic unit (OTU) counts for the classroom swab samples and for various other samples that the authors used in the paper. Each row contains data for a given swab sample. Each column contains data for a given OTU.

* **taxa.tsv** This file lists taxonomic ranks (kingdom, phylum, class, order, family, genus species) for each OTU.

### Getting Started

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

In completing this assignment, you will benefit from various packages in the tidyverse, including `readr`, `tidyr`, `dplyr`, and `stringr`. Below is a shortcut you can use to load all of these packages.

```
library(tidyverse)
```

You will also need to read these files into tibbles. The following code illustrates how to do this.

```
swabs = read_tsv("swabs.tsv")
counts = read_tsv("counts.tsv")
taxa = read_tsv("taxa.tsv")
```

**Add the above code snippets to the top of the R scripts that you create for problems 1-9.**

### Problem Descriptions

Please use R code to do/answer the following questions.

1. Filter the full `swabs` data set so that it only includes samples of type "wall". Store these results in a new data object called `swabs2`. Sort `swabs2` by the x and y coordinates (`xcor` and `ycor` columns), in that order. Store these results in a new data object called `swabs3`. Create a new variable called `swabs4` that contains only the `swab.id`, `location`, and `location2` columns from `swabs3`. Create a new variable called `swabs5` is a copy of `swabs4`. Add a column to `swabs5` that is a string concatenation of the `location` and `location2` columns. Set the name of this new column to "combo_location". **Print `swabs5`.**

2. Write code that combines the steps from problem 2 into a into a **single command** using `magrittr` pipes. The output of this code should match what you obtained for problem 2.

3. This problem and the next few problems build on each other. Create a new object called `swabsOfInterest` that selects the `swab.id` column from the original `swabs` object. Although this data frame is of little use on its own, it will be useful when joined with other data objects. **Please print `swabsOfInterest`** (using default print settings).
    
4. Start with the objects you created for problem 4. Then use the `inner_join` function to merge `swabsOfInterest` with the `counts` data object. Store the result in an object called `swabsOfInterestCounts`. (This way we can limit the count data only to the swabs for which we have metadata about the swabs.) **Please print `swabsOfInterestCounts`** (using default print settings).

5. Start with the objects you created for problems 4-5. Although debatable, `swabsOfInterestCounts` is not yet tidy. Use the `gather` function (`tidyr` package) to transform the taxa columns into two columns that represent the OTU and the counts per OTU. The names of these columns should be `otu` and `count`. Store the result in an object called `gatheredCounts`. This data frame should also contain a column called `swab.id`. **Please print `gatheredCounts`** (using default print settings).

6. Start with the objects you created for problems 4-6. Using `gatheredCounts`, calculate the number of counts per OTU. Use the `group_by` and `summarise` functions for this. Store the result in an object called `summarizedCounts`. Hint: you will need to use the `sum` function within `summarize`. **Please print `summarizedCounts`** (using default print settings).

7. Start with the objects you created for problems 4-7. Use the `inner_join` function to merge `summarizedCounts` with the `taxa` object. Assign the result to an object called `taxaSummary`. Hint: By default, this function tries to identify column names that are common between the two data frames being merged. Because these objects do not have two columns with the same name, you can use the `by` parameter to specify which columns should be used. **Please print `taxaSummary`** (using default print settings).

8. Start with the objects you created for problems 4-8. Sort `taxaSummary` by the `count` column in **descending** order. Assign the result to an object called `sortedTaxaSummary`. Use the `head` function to reassign this object so that it contains only the first row of data. **Then print `sortedTaxaSummary`** to indicate the kingdom, phylum, and class of the OTU that had the highest count (using default print settings).

9. Apply the `separate` function to the `swabs` object. Split the `swab.id` column into three columns. The first column should be called `swabType` and should indicate the type of swab ("Swab"). The second column should be called `swabGroup` and should indicate the group number in each swab ID ("162"). The third column should be called `swabNumber` and should indicate the unique number associated with each swab (for example, "02", "03", or "04"). **Print this tibble**  (using default print settings).

10. Below is some code that creates a tibble. This dataset is not tidy because each observation is spread across two rows. Use the `spread` function in `tidyr` to make the data "tidy". **Print the tidy version of the data** (using default print settings).

```
hurricanes <- tribble(
  ~hurricane, ~year, ~coordinateType, ~coordinate, ~mph,
  "Noel",     2007,  "Latitude",      18.4655,   80,
  "Noel",     2007,  "Longitude",     66.1057,   80,
  "Maria",    2017,  "Latitude",      19.9825,   175,
  "Maria",    2017,  "Longitude",     67.2457,   175,
  "Gilbert",  1988,  "Latitude",      17.7289,   186,
  "Gilbert",  1988,  "Longitude",     63.2839,   186
)
```

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.
