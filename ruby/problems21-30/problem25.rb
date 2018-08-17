iterator = 1
term_prev = 1
term_current = 1
loop do
  iterator += 1
  break if term_current.to_s.length == 1000
  temp = term_current
  term_current += term_prev
  term_prev = temp
end
puts iterator
