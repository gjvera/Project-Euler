def get_proper_divisors(num)
    list = (1..num - 1).to_a
    divisors = []
    list.map{|n| if num % n == 0 
             divisors.push(n)
    end}
    divisors.reduce(:+)
end

def is_amicable(num)
    a = get_proper_divisors(num)
    b = get_proper_divisors(a)
    if a != b
        if b == num 
            true
        else
            false
        end
    end
end

amicable = []
(220..9999).to_a.map{|n| if is_amicable(n) == true 
                     amicable.push(n)
end}
puts amicable.reduce(:+)
