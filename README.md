# Assignments for BIO 365 (Computational Biology) at Brigham Young University

Each directory in this repository contains instructions for completing an assignment. Please view the README.md files in these directories for instructions on completing and submitting these assignments.

### Testing your code

Suppose you would like to compare the output of your code for Assignment-2 against the expected output for that assignment. First you would clone this repository to your local computer. **Put it in a location that is completely separate from your code (also not in a subdirectory of your code).**

```
git clone https://github.com/BYUBioinformatics/BIO365.git
```

Or if you have previously cloned my repository, then `cd` to the directory on your computer where that repository is stored. Then execute the following command to make sure you have the latest version of my repository.

```
git pull origin master
```

Suppose you had stored *my* repository in a directory called /home/user/BIO365_Instructor. Suppose you had stored *your* code in a directory called /home/user/BIO365. And suppose you want to test your code for problem 1 of Assignment-2. Below is an example of how you could do this.

*These instructions should work on a UNIX-based system. If you are using a Windows computer, you might consider completing these assignments on the Supercomputer.*

```
cd /home/user/BIO365/Assignment-2

# This executes the test script for problem 1 and saves any output (standard output or standard error) to a text file called 1.txt.
Rscript /home/user/BIO365/Tests/1.R > 1.txt 2>&1

# This executes a Python script that indicates how your output compares to the expected output.
python3 /home/user/BIO365/CheckOutput.py 1.txt /home/user/BIO365/Assignment-2/ExpectedOutput/1.txt
```

Please make sure **not** to commit your output file(s) to GitHub. To avoid this, you can create a text file called `.gitignore` and put `*.txt` in it.