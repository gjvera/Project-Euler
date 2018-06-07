sum = 0;
i = 0;
loop do
    if i == 1000
        break
    end
    if i % 3 == 0 || i % 5 == 0
        sum += i
    end
    i += 1
end
puts "#{sum}"
