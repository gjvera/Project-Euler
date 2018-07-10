num = 2**1000
num = num.to_s.split('').map(&:to_i)
result = 0;
num.each{ |x|
    result += x
}
puts"#{result}"
