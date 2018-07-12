def is_palin(num)
    puts "Checking to see if #{num}"
    if num.to_s.reverse == num.to_s
        puts "#{num} is a palindrome"
        1
    end
    0
end

def reverse_num(num)
    num.to_s.reverse.to_i
end

num_of_lychrel = 0
count = 0
palin = 0
iterator = 0
num = -1
while iterator <= 10000
    count = 0
    num = iterator
    palin = 0
    while count <= 50 
        reversed_num = reverse_num(num)
        sum_num = reversed_num + num 
        if is_palin(num) or is_palin(sum_num) 
            palin = 1
            break
        end
        count += 1
    end
    if palin == 1
        puts "CONTINUING"
        iterator += 1
    else
        num_of_lychrel += 1
        iterator += 1
        palin = 0
    end
end
puts num_of_lychrel

        

