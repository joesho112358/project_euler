final_number = 1
(1..100).each do |number|
  final_number *= number
end
running_sum = 0
final_number.to_s.split('').each do |digit|
  running_sum += digit.to_i
end
puts running_sum

#648