def get_lcm(num1, num2):
    if num1 > num2:
        start = num1
    else:
        start = num2
    found = False
    while(not found):
        if(start % num1 == 0 and start % num2 == 0):
            found = True
            break
        start += 1
    return start

def main():
    next_one = 3
    next_two = 4
    cur_lcm = get_lcm(1, 2)
    while next_two <= 20:
        cur_lcm = get_lcm(cur_lcm, get_lcm(next_one, next_two))
        next_one += 1
        next_two += 1
    print(cur_lcm)
    
if __name__ == "__main__":main()
