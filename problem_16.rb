number = 2 **1000

running_sum = 0

number.to_s.split('').each do |digit|
  running_sum += digit.to_i
end

puts running_sum

#1366