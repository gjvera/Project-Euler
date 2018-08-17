num = 999
current_palin = 0
loop do
  second_num = 999
  loop do
    current_product = num * second_num
    if current_product.to_s.reverse == current_product.to_s
      current_palin = current_palin.to_i if current_palin < current_product
    end
    second_num -= 1
    break if second_num < 100
  end
  num -= 1
  break if num < 100
end
puts current_palin
