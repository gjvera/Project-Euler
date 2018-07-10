def get_bin_num(num):
    temp_num = num
    binary = ""
    while temp_num != 0:
        binary += (str(temp_num % 2))
        temp_num //= 2
    return binary

def is_palin(num):
    if num == num[::-1]:
        return True

def main():
    sum = 0
    for i in range(1, 1000000):
        bin_num = get_bin_num(i)
        if is_palin(bin_num) and is_palin(str(i)):
            print("TRUE!!")
            sum += i
    print(sum)

if __name__ == '__main__':main()
