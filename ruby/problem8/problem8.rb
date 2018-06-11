data = ''
f = File.open("problem8.txt", "r") 
  f.each_line do |line|
    data += line
  end
nums = data.chars
nums = nums.map(&:to_i);
max = 13;
min = 0;
orig_min = 0;
max_prod = 0;
while max < nums.length
    min = orig_min
    temp_prod = 1;
    while min != max
        temp_prod *= nums[min]
        min+=1
    end
    if temp_prod > max_prod
        max_prod = temp_prod
    end
    orig_min+=1
    max+=1
end
puts"#{max_prod}"
