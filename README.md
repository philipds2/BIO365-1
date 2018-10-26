# Assignments for BIO 365 (Computational Biology) at Brigham Young University 

Each directory in this repository contains instructions for completing an assignment. Please view the README.md files in these directories for instructions on completing and submitting these assignments.

### Testing your code

*These instructions should work on UNIX-based systems. If you are using a Windows computer, you might consider completing these assignments on the Supercomputer.*

Suppose you would like to compare the output of your code for Assignment-2 against the expected output for that assignment. First you would clone my repository to your local computer. **Put it in a location that is completely separate from your code.**

Suppose you wished to store my repository on your computer at `/home/user/BIO365_Instructor`. You would execute the following commands at the command line.

```
cd /home/user
git clone https://github.com/BYUBioinformatics/BIO365.git
mv BIO365 BIO365_Instructor
```

Or if you have previously cloned my repository, you would execute the following command to make sure you have the latest version of my repository.

```
cd /home/user/BIO365_Instructor
git pull origin master
```

Now suppose you have stored *your* code in a directory called `/home/user/BIO365`. And suppose you want to test your code for problem 1 of Assignment-2. Your code for problem 1 would be stored in a file located at `/home/user/BIO365/Assignment-2/1.R`. Below is an example of how you could test that code.

```
cd /home/user/BIO365/Assignment-2

# This executes the test script for problem 1 and saves any output (standard output or standard error) to a text file called 1.txt.
Rscript /home/user/BIO365_Instructor/Assignment-2/Tests/1.R > 1.txt 2>&1

# This executes a Python script that indicates how your output compares to the expected output.
python3 /home/user/BIO365_Instructor/CheckOutput.py 1.txt /home/user/BIO365_Instructor/Assignment-2/ExpectedOutput/1.txt
```

When you are done testing your code, please make sure **not** to commit your output file(s) to GitHub. To avoid this, you can create a text file called `.gitignore` and list `*.txt` within the file.