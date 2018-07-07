count = 0
counter = 1

def is_prime(num)
    if num % 2 == 0
        false
    else
        i = 3
        while i < Math.sqrt(num)
            if num % i == 0
                false
            end
            i+=1
        end
        true
    end
end

loop do
    is_circular_prime = true
    break if counter == 1000000
    puts "Counter: #{counter}"
    arr = counter.to_s.chars.to_a.permutation.to_a  
    arr.map{ |x|  if is_prime(x.join.to_s.to_i) == false
              is_circular_prime = false
    end
    }
    if is_circular_prime == true
        count += 1
    end
    counter += 1
end
puts count



