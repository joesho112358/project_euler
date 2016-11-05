sum = 0
(2..1000000).each do |number|
  digits = number.to_s.split('')
  digit_sum = 0
  digits.each do |digit|
    digit_sum += digit.to_i**5
  end
  if number == digit_sum
    sum += number
  end
end
puts sum

#443839