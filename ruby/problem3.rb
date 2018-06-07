number = 600851475143;
i = 2;
max_divisor = 0;
loop do
    if i > Integer.sqrt(number)
        break;
    end
    if number % i == 0
        max_divisor = i;
        number = number/i;
        i = 2;
    else
        i += 1;
    end
end
puts "#{number}"
