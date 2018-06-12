# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2

# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#
# Euclid's formula a^2 + b^2 = (m^2 - n^2)^2 + (2mn)^2 = (m^2 + n^2)^2 = c^2

m = 2
break_nested = false;
loop do
    if m > 1000
        break
    end
    n = 1
    loop do
        if n > m
            break
        end
        a = ((m ** 2) - (n ** 2))
        b = (2*m * n)
        c = (m ** 2 + n ** 2)
        if a + b + c == 1000
            prod = a*b*c;
            puts"#{prod}"
            break_nested = true;
            break
        end
        n +=1
    end
    break if break_nested == true;
    m += 1
end
