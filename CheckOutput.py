import sys, difflib

outputFilePath = sys.argv[1]
expectedOutputFilePath = sys.argv[2]

output = ""
with open(outputFilePath) as outputFile:
    for line in outputFile:
        output += line
    output = output.rstrip()

expectedOutput = ""
with open(expectedOutputFilePath) as expectedOutputFile:
    for line in expectedOutputFile:
        expectedOutput += line
    expectedOutput = expectedOutput.rstrip()

diff = difflib.ndiff(output, expectedOutput)

numChars = 0.0
numDifferences = 0.0

for x in diff:
    sign = x[0]
    character = x[2]

    numChars += 1

    if sign != " ":
        numDifferences += 1

diffProportion = numDifferences / numChars
score = 1.0 - diffProportion

if score < 0.6:
    score = 0

print("Score: {}".format(score * 100.0))

if score < 1.0:
    print("\\n#######################################################")
    print("# Student output:")
    print("#######################################################\n")
    print(output)
    print("\n#######################################################")
    print("# Expected output:")
    print("#######################################################\n")
    print(expectedOutput)
