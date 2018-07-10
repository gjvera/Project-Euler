def gen_pent_num(num):
    return (num * (3 * num - 1))/2
def gen_hex_num(num):
    return (num * (2*num -1))

tri_num = list()
pent_num = list()
hex_num = list()

for i in range(1000, 55000):
    pent_num.append(gen_pent_num(i))
    hex_num.append(gen_hex_num(i))
for num in pent_num:
    if num in hex_num:
        print(int(num))
        exit()
