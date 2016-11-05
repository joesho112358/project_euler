def sum_proper_factors(number)
  counter = 2
  factors = [1]
  while counter <= number/2
    factors << counter if number % counter == 0
    counter += 1
  end
  sum = 0
  factors.each do |factor|
    sum += factor
  end
  sum
end

amicable_numbers = []
(1..9999).each do |number|
  temp_sum = sum_proper_factors(number)
  if sum_proper_factors(temp_sum) == number
    amicable_numbers << number unless temp_sum == number
  end
end

sum = 0
amicable_numbers.each do |number|
  sum += number
end

puts sum

#31626