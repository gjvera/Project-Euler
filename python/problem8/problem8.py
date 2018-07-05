import fileinput
num = ""
max = 0

for line in fileinput.input("num.txt"):
    num += line.rstrip()
upper_bound = len(str(num))
for i in range(0, upper_bound):
    print(str(num)[1])
