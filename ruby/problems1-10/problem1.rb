sum = 0
i = 0
loop do
  break if i == 1000
  sum += i if (i % 3).zero? || (i % 5).zero?
  i += 1
end
puts sum
