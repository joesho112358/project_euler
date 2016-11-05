def find_factors(number)
  counter = 2
  factors = [1]
  while counter <= number/2
    factors << counter if number % counter == 0
    counter += 1
  end
  factors
end

factors = []
triangle_number = 0
natural_numbers = 1
while factors.count < 500
  triangle_number += natural_numbers
  factors = find_factors triangle_number
  factors << triangle_number
  natural_numbers += 1
end

puts triangle_number

#76576500