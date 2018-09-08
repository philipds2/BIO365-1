# BIO 365 - Assignment 1

### Instructions

The purpose of this assignment is to help you become more familiar with basic R coding. To get started, please create a [GitHub.com](https://www.github.com) account if you have not already done so. Then apply for the [academic research discount](https://help.github.com/articles/applying-for-an-academic-research-discount/) so you can create *private* GitHub repositories. Next make sure you have the `git` software [installed](https://git-scm.com/downloads) on your personal computer. 

After doing this, copy the URL of this repository on GitHub (see the `Clone or download` button on the top right of the page). Then at the command line, enter the following command (replacing `<clone URL>` with the actual URL):

```
git clone <clone URL>
```

After doing this, you will have a local copy of the repository. There will be a directory called `.git` in this repository, which has the git commit history, etc. Delete this directory so you can start fresh (**this is important!!**).

Go to GitHub under *your own* account and create a repository for this assignment. Then go into the settings of your repository and **make sure it is listed as "private"**. Next click on "Settings" and "Collaborators" and add me as a collaborator on your repository (my GitHub ID is `srp33`).

At the command line, `cd` to the Assignment-1 directory that you cloned from my repository. Then enter the following commands (replace `<clone URL>` with the clone URL from **your** repository (the one you get when you click on "Clone or download"):

```
git init
git add --all
git commit -m "first commit"
git remote add origin <clone URL>
git push -u origin master
```

Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`. Store these scripts at the root level of your repository.

In this repository, you will find a directory called `Tests`. It contains a test script for each problem. I will use these scripts to test your code. You can use them to test your code as well. You will also find a directory called `ExpectedOutput`. If your code is working properly for a given problem, you should get this output when the test script is executed for that problem.

### Problem Descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

1. Declare a variable called `greeting` and assigns a value of `Hello, World!` to that variable. Then print the value of this variable. (For demonstration purposes, a script called `1.R` has been stored in this repository.)

2. Declare a variable that stores an *integer* value of `2` and another variable that stores a *numeric* value of `3.0`. Then print the following:

    a. The value the integer.

    b. The value of the numeric.
    
    c. The *type* of the integer variable (use an R function to obtain this type).
    
    d. The *type* of the numeric variable (use an R function to obtain this type).
    
    e. The sum of the these two variables (use an R function to calculate the sum).
    
    f. The *type* of the sum.
    
    g. Use the `as.integer` function to convert the integer variable to an actual integer. Then print the type of this variable.
    
    h. The *type* of the sum of the two variables after the type conversion from the previous step.

3. Declare a variable that stores a *string* value of `8460.2`. Print the value of this variable. Then convert the value to a *numeric* and print that value. Convert the numeric value to an *integer* and print that value. Finally, convert the integer to a *Boolean* (logical) value that indicates whether the value is greater than zero.

4. Please declare a variable called `numLions` that stores an integer value of `42`. Declare another variable called `numTigers` that stores an integer value of `17`. Declare another variable called `country` that stores a string value of `South Africa`. Print a message that indicates the following: "The number of lions in South Africa is 42. The number of tigers in South Africa is 17." Hint: use the `paste` function.

5. The following code results in an error. First run the code as it is shown below so you can see the error message. Then fix the code so that it calculates and prints the sum of the five integers.

```
bioinformatics <- 1
is <- 2
for <- 3
cool <- 4
people <- 5
print(bioinformatics + is + for + cool + people)
```

6. Use built-in R functions to print an answer to each of the following.

    - The absolute value of -15.5.
    - 3.8 rounded **up** to the nearest integer.
    - 3.8 rounded **down** to the nearest integer.
    - 4.483847 rounded to one decimal place using standard rounding.
    - Take the square root of 9.99999.
    - The natural logarithm of 16.
    - The base-2 logarithm of 16.

7. An ecologist is studying the effects of ambient temperature on nematode worm development. Her strategy is to place the worms in small boxes and then to place these boxes under different levels of heat exposure in her lab. In total, she has 341 worms. Write code that performs the calculations described below and prints each answer.

    If exactly 26 worms can fit in a single box, what is the minimum number of boxes she should buy so that there will be enough room for all the worms?

    Assuming that she places 26 worms in all the boxes except the last one, how many worms will be in the last box?

8. Please write a function called `addThreeNumbers` that accepts 3 arguments. When this function is invoked, each of the parameter values will be numeric values. Your function should **calculate and return the sum** of these numbers.

9. Please write a function called `shouldIEat` that tells you whether you should eat, depending on how hungry you are. This function should accept a single argument that is a number between 1 and 10. If your hunger level is greater than or equal to 8 and less than or equal to 10, the function should return `Go eat!` If your hunger level is greater than or equal to 3 and less than 8, it should return `Don't eat!` If your hunger level is greater than or equal to 1 and less than 3, it should return `Take a nap!` If your hunger level is greater than 10 or less than 1, it should return `Invalid input.`

10. Suppose you are working in a research laboratory with E. coli (bacteria) that grow in culture. As you keep the bacteria in proper growth conditions, they multiply at a rate of 20% each day. Suppose that other scientists in the same laboratory are working with other types of bacteria, and these grow at different rates than the E. coli. Please write a function that allows researchers to predict the size of their bacterial population after 3 days. This function should be called `predictPopulationGrowth` and should accept three arguments: 1) the name of the bacterial species, 2) the number of bacteria at the beginning of the experiment, and 3) the growth rate per day. This function should calculate the expected growth after 3 days. This number should be rounded to the nearest whole number and converted to an integer value. Your function should return a statement such as: `After 3 days, there will be 16345 E. coli`.

### Submitting the assignment

After you complete the problems, *commit* your answers to your forked repository on GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all
git commit -m "<message>"
git push origin master
```

After committing your solutions, go to Learning Suite and submit the URL for your repository. I will download and test your code.
