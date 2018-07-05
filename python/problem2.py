prev = 1
cur = 1
sum = 0
while cur < 4000000 :
    temp = cur
    cur = cur + prev
    prev = temp;
    if cur % 2 == 0:
        sum += cur

print(sum)
