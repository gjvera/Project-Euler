data = ''
sum = 0
f = File.open("problem13.txt", "r")
    f.each_line do |line|
        sum += line.to_i
    end
sum = sum.to_s.split(//);
ans = ''
for index in 0 ... 10
    ans += sum[index].inspect
end
puts"#{ans.tr'"',''}"
