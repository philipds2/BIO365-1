# Assignments for BIO 365 (Computational Biology) at Brigham Young University

Each directory in this repository contains instructions for completing an assignment. Please view the README.md files in these directories for instructions on completing and submitting these assignments.

Suppose you would like to compare the output of your code against the expected output, you can do this with the `CheckOutput.py` script provided in this repository. Below is an example of how you would do this for problem 1 of Assignment-1.

```
cd Assignment-1

# This executes the test script for problem 1 and saves any output (standard output or standard error) to a text file called 1.txt.
Rscript Tests/1.R > 1.txt 2>&1

# This executes a Python script that indicates how your output compares to the expected output.
python3 ../CheckOutput.py 1.txt ExpectedOutput/1.txt
```

Please make sure **not** to commit your output file(s) to GitHub. To avoid this, you can create a text file called `.gitignore` and put `*.txt` in it.