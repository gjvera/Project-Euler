elems = []
(2..500000).map{|n| num = n; n = n.to_s.split('').map(&:to_i);
                sum = 0
               n.each{|x| sum += x ** 5}
               if num == sum
                   elems.push(num)
               end
}
puts elems.reduce(:+)
