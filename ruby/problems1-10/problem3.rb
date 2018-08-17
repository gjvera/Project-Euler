number = 600_851_475_143
i = 2
loop do
  break if i > Integer.sqrt(number)
  if (number % i).zero?
    number /= i
    i = 2
  else
    i += 1
  end
end
puts number
