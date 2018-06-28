data = ''
f = File.open("problem18.txt", "r")
    f.each_line do |line|
        data += line
    end
data = data.split(" ").map(&:to_i)
puts"#{data}"
max = 0
sum = 0
current_row = 0
current_term = 1;
loop do
     if current_row == 15
         break
     end
     puts"#{data[current_row]} + #{data[current_term]}"
     sum += data[current_row]
     sum += data[current_term]
     current_row += 2
     current_term = current_row + 1
     puts"#{data[current_row]} term = #{data[current_term]}"
end
puts"#{sum}"
