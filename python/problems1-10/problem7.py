import math
found = 0
iterator = 10
counter = 4
is_prime = 1
while found == 0:
    for i in range(2, math.ceil(math.sqrt(iterator)) + 1):
        if iterator % i == 0:
            is_prime = 0
    if is_prime == 1:
        counter += 1
        is_prime = 0
    if counter == 10001:
        found = 1
        break;
    iterator += 1
    is_prime = 1
print(iterator)


