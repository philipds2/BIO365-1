# BIO 365 - Assignment 9

### Introduction

The purpose of this assignment is to help you become familiar with making plots using the `ggplot2` package. This package is part of the `tidyverse`.

Please go to the `BIO365` repository that you created for a previous assignment. Create a directory called `Assignment-9`. As you work through this assignment, please put the R scripts that you create in that directory. Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`.

For each problem, your code should create a PDF file. The name of this PDF file should correspond to the problem number. For example, for problem 1, your script would generate a file called `1.pdf`. Make sure to load the `tidyverse` library at the top of each script.

### Getting Started

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

The following example illustrates how to generate a PDF file using `ggplot2`. First, the example code loads the `tidyverse` library. Second, it generates a vector of random numbers. Then it stores the data in a tibble (`ggplot2` requires data to be in a tibble). Next, the code plots the data as a histogram. Finally, it saves the graph to a PDF file with a specific name (you would replace `<problemNum>` with the actual problem number). Important: You **do not* need to invoke the `pdf` or `graphics.off` functions as you did in the last assignment.

```
library(tidyverse)

data = rnorm(1000)
tibbleData = tibble(test=data)

ggplot(tibbleData, aes(test)) +
  geom_histogram()

ggsave("<problemNum>.pdf")
```

### Problem Descriptions

Please use R code to answer the following questions. **Your graphics should match the expected output exactly.** You may need to look at the documentation in R to specify the settings described below.

For this exercise, you will use data from a paper by Coyle, et al. entitled, ["Opposing mechanisms drive richness patterns of core and transient bird species"](http://www.journals.uchicago.edu/doi/10.1086/669903). These researchers were interested in whether birds in North America typically stay at a particular geographic location ("core" species) or travel frequently across locations ("transient" species). In this directory, I have included two data files with the following information:

* Occupancy_Data.tsv

    - LocationID = An identifier that represents the geographic location where a bird was observed.
    - SpeciesID = An identifier that represents the species observed at that location.
    - Occupancy = The frequency at which the species was observed at that location.

* Location_Data.tsv

    - LocationID = This identifier corresponds with LocationID in the occupancy data.
    - NumSpecies = Total number of species identified at that location.
    - NumCoreSpecies = Number of core species identified at that location.
    - NumTransientSpecies = Number of transient species identified at that location.
    - PredominantSpeciesType = Whether more core or transient species were identified at that location.
    - NDVI = Normalized Difference Vegetation Index at that location.
    - Elevation
    - Longitude
    - Latitude

1. Use the `ggplot2` package to create a *histogram* of the `Occupancy` values across all locations. Set the histogram's `binwidth` value to `0.02`. Set the x-axis label to "Proportion of time present at site". Set the y-axis label to "Density of species-sites". Use the `theme_bw` theme.

*Write a comment in your code that describes what you interpret from this graph.*

2. Use the `ggplot2` package to create a [density plot](http://docs.ggplot2.org/0.9.3.1/geom_density.html) of the `Occupancy` values across all locations. Set the thickness (size) of the line to `2`. Set the x-axis label to "Proportion of time present at site". Set the y-axis label to "Density of species-sites". Use the `theme_bw` theme.

*Write a comment in your code that describes what you interpret from this graph.*

3. Use `ggplot2` to create a *bar plot* that shows the number of locations for which each species was predominately "core" or "transient" (`PredominantSpeciesType` variable). Label the x-axis as "Predominant Species Type". Label the y-axis as "Species Count". Use the `theme_bw` theme. Indicate that you want the colors inside the bars to be different depending on the predominant species type. You **do not** need to specify these colors explicitly. Rather, let `ggplot2` choose the color scheme. However, you will need to indicate that `ggplot2` should color the bars differently, based on predominant species type. Lastly, by default, `ggplot2` may include a legend in the graph; however, this is redundant with the labels under the bars. Please remove the legend from the graph (you may need to search the Web to learn how to do this).

*Write a comment in your code that describes what you interpret from this graph.*

4. Use `ggplot2` to make a [scatter plot](http://docs.ggplot2.org/current/geom_point.html) that compares the total number of species (x axis) identified at each location against NDVI (y axis) at the same locations. Color the points according to the predominant species type. Change the **size** of the points according to elevation. Use the `theme_dark` theme.

*Write a comment in your code that describes what you interpret from this graph.*

5. For this problem, you will need to install two additional R packages that make it easier to create maps in R. Please execute the following code on your computer but **do not include this code in your solution script**.

```
install.packages("maps")
install.packages("mapproj")
```

At the top of your solution script, **you will need to load these libraries** (along with `tidyverse`).

Now use `ggplot2` to plot the predominant species type for each location on a map of the United States. Below is some code to help you get started. Use the `geom_point` function to add the data points. Color the points according to the predominant species type at each location. Hint: you will need to use an aesthetic within this function to specify the longitude (x) and latitude (y) coordinates and to specify the color. Set the x-axis label to "Longitude" and the y-axis label to "Latitude". Set the title of the graph to "Core vs. Transient Species in the U.S." (hint: there is no "main" argument...you'll need to figure out how to find how to set the title). As the reading suggested, use the `coord_quickmap` function to set the aspect ratios properly for the map. You do not need to set a theme for this problem (use the default theme).

```
# Make sure load the libraries first...

all_states <- map_data("state")

ggplot(locationData) + 
  geom_polygon(data=all_states, aes(x=long, y=lat, group = group), colour="black", fill="white") + 
  expand_limits(x = all_states$Longitude, y = all_states$Latitude)
  # Add your code here...
```

*Write a comment in your code that describes what you interpret about core and transient species after seeing the map.*

### Checking your answers

If you would like to check whether your PDF files are exactly the same as the expected output files, you can use a tool called [ImageMagick](https://imagemagick.org/script/index.php). This program can be installed on UNIX-based and Windows-based systems. You can install it on your local computer if you want. It is also installed on the Supercomputer. To use it on the Supercomputer, you would load the software with this command: `module load imagemagick`. The following instructions apply to UNIX-based systems, but it should be similar on Windows-based systems.

Once you have ImageMagick installed/loaded, you would execute a command such as the following at the command line (replacing `<problemNum>` with the actual problem number):

```
compare -metric rmse /home/user/BIO365_Instructor/Assignment-9/ExpectedOutput/<problemNum>.pdf <problemNum>.pdf null
```

If the files are identical, this command will output the following (which indicates there are zero differences):

```
0 (0)
```

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

**Important: Please don't add any PDF or data files to your GitHub repository.** Indicate that you want to add the R scripts only (example below). Or you can use a [.gitignore](https://help.github.com/articles/ignoring-files/) file.

```
git add --all *.R
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.