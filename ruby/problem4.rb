num = 999;
current_palin = 0;
loop do
    second_num = 999;
    loop do
        current_product = num * second_num;
        if current_product.to_s.reverse ==  current_product.to_s 
            if current_palin < current_product 
                current_palin = current_product.to_i;
            end
        end
        second_num -= 1;
        if second_num < 100 
            break;
        end
    end
    num -= 1;
    if num < 100 
        break;
    end
end
puts"#{current_palin}";