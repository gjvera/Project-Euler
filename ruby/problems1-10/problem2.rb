sum_even = 0;
term_prev = 1;
term_current = 1;
loop do
    if term_current >= 4000000
        break
    end
    temp = term_current;
    term_current = term_current + term_prev;
    term_prev = temp;
    if term_current % 2 == 0
        sum_even += term_current;
    end 
end
puts "#{sum_even}"