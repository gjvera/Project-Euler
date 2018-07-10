import fileinput
num = ""
max_num = 0
for line in fileinput.input("num.txt"):
    num += line.rstrip()
upper_bound = len(str(num))
begin = 0
end = 13
prod = 1
while end <= upper_bound:
    prod = 1
    for i in range(begin, end):
        prod *= int(num[i])
    if prod > max_num:
        max_num = prod
    begin += 1
    end += 1
print(max_num)
