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
    return False

def main():
    sum_palin = 0
    for i in range(1, 1000000):
        bin_num = get_bin_num(i)
        if is_palin(bin_num) and is_palin(str(i)):
            sum_palin += i
    print(sum_palin)

if __name__ == '__main__':main()
