# BIO 365 - Assignment 3

### Instructions

The purpose of this assignment is to help you become more familiar with using factors, strings, and lists in R. 

Please go to the `BIO365` repository that you created for the previous assignment. Create a directory called `Assignment-3`. As you work through this assignment, please put the R scripts that you create in that directory.

Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`.

### Problem Descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

1. Please write a function called `sortFactor` that accepts a single argument: a vector of string (character) values. Convert the vector to a factor object. Upon doing so, indicate that you want the levels to be unique values (hint: use the `unique` function) in alphabetically sorted order. Please return this factor from your function.

2. Please write a function called `getBabyName` that creates a list. Each *key* in the list should be the name of an adult animal. Each *value* in the list should be the term used to describe the baby of a given animal. Your list should contain the following (adult) animal names: dog, cat, horse, pig, bear, and alligator. The baby names for each of these are puppy, kitten, foal, piglet, cub, and hatchling, respectively. Your function should accept a single argument: the adult name of an animal (for example, "dog"). Your function should return the corresponding baby name (for example, "puppy"). *Important: your function should **not** use an `if` statement or a `for` loop.*

3. Please write a function called `containsAnyOfTheseKeys` that accepts two arguments: 1) a list variable and 2) a vector variable. Your function should return a Boolean (logical) value that indicates whether the list contains **any** key in the specified vector. *Important: your function should **not** use an `if` statement or a `for` loop.* Hint: one way to do this is with the `intersect` function.

4. Please write a function called `mergeAndSumLists` that accepts two arguments. Both of these arguments will be list variables. In these lists, keys will be strings, and values will be numeric. Your function should create a new list that merges these two lists. When both lists have an element with the same key, the value in the new list should be the sum of the values from the original two lists. *It is **fine** to use a `for` loop or `if` statement on this problem.*

5. Please write a function called `findTextMatches` that accepts two arguments. The first argument will be a string variable that contains an abstract from a classic biology paper. The second argument will be another string. Your function should return the number of times that the specified string (second argument) is found in the abstract (including in the middle of words). Please ignore case sensitivity on this problem.

6. Please write a function called `findDoubleVowels` that accepts one argument: an abstract from a classic biology paper. Please identify strings in the abstract that are **three consecutive vowels**. Your function should construct a vector with these strings. Please convert all strings to lower case, ignore repeats, and return the strings in sorted order.

7. Restriction enzymes are used in laboratories to remove a piece of DNA from a chromosome so that it can be used for molecular cloning. These enzymes recognize specific restriction sites in the DNA, which can be used as starting and stopping points for cutting the DNA. Please write a function called `cutDNA` that accepts three arguments: 1) a string that represents a DNA sequence on a chromosome, 2) a string that represents the first restriction site, and 3) a string that represents the second restriction site. Your function should return the DNA sequence in between the two restriction sites that will be cut from the first DNA sequence.

8. Simple Sequence Repeats (SSRs) are regions of DNA that repeat multiple times. Suppose you are interested in a particular SSR that consists of a series of "AT" nucleotides that repeat 3 or 4 times in the middle of a DNA sequence. The AT repeat region is always preceded and followed by either a G or a C nucleotide. Suppose you have found that this SSR is important in determining the phenotype of a specific fish population. However, with *more than* 4 repeats, a different phenotype occurs, and you are only interested in finding species where "AT" is repeated 3 or 4 times in their genome. Please create a function called `findSSR` that accepts a single argument. This argument will be a string that contains a DNA sequence. If that DNA sequence has an "AT" that repeats 3 or 4 times and is preceded and followed by either a G or C nucleotide, your function should return `TRUE`. Otherwise, your function should return `FALSE`.

9. Suppose you are monitoring small-mammal populations in Capitol Reef National Park. Each time you capture a small mammal, you measure its weight and release it back into the wild. Often you see the same mammal types. You now want to calculate the maximum weight of each mammal type. Please write a function called `findMaxWeights` that accepts two arguments: 1) a vector of strings that indicate each mammal that was observed and 2) a vector of weights (in kg) for each of those mammals. **Without using a `for` loop**, please calculate the maximum weight of each type of mammal. Please return a *named vector* that indicates these maximum values, sorted alphabetically by mammal name. Hint: Use the `tapply` function.

10. Suppose you are monitoring bird populations in Capitol Reef National Park. Each time you capture a bird, you measure its weight and release it back into the wild. Often you see the same bird types. You now want to calculate the maximum weight of each bird type. Please write a function called `findMaxWeights2` that accepts one argument: a list. Each key in this list will be a type of bird. Each value will be a vector of weights. Please return a *named vector* that indicates the maximum weight of each bird type. Please sort this list by bird type. Hint: use the `lapply` function.

### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

``
git add --all
git commit -m "<message>"
git push origin master
``

After committing your solutions, make sure they show up properly on GitHub. You don't need to submit anything via Learning Suite for this assignment.
