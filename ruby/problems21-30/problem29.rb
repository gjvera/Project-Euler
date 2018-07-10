a = 2
elems = []
loop do
    b = 2
    if a == 101
        break
    end
    loop do
        if b == 101
            break
        end
        if elems.include?(a ** b) == false
            elems.push(a**b)
        end
        b += 1
    end
    a += 1
end
puts elems.size
