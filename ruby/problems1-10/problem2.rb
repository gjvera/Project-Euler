sum_even = 0
term_prev = 1
term_current = 1
loop do
  break if term_current >= 4_000_000
  temp = term_current
  term_current += term_prev
  term_prev = temp
  sum_even += term_current if (term_current % 2).zero?
end
puts sum_even
