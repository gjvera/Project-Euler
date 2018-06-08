#What is the 10 001st prime number?

counter = 0;
num = 1;
loop do
    prime = true;
    temp = 2;
    while temp < num 
        if num % temp == 0
            prime = false;
            break;
        end
        temp += 1;
    end
    if prime == true
        counter += 1;
    end
    if counter == 10002
        break;
    end
    num += 1;
end
puts"#{num}";
