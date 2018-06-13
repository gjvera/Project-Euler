# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
sum_squares = 0
count = 0
square_sum = 0
loop do
    if count == 101 
        break
    end
    sum_squares += (count ** 2)
    square_sum += count
    count += 1
end 
puts"#{(square_sum ** 2) - sum_squares}"
