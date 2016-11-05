this_number= 1001*1001

numbers_with_position = [1]
wanted_counter = 1
unwanted_counter = 0
number_to_skip = 1
(2..this_number).each do |number|
  if unwanted_counter < number_to_skip
    unwanted_counter += 1
  elsif wanted_counter == 4
    numbers_with_position << number
    wanted_counter = 1
    unwanted_counter = 0
    number_to_skip += 2
  elsif wanted_counter < 4
    numbers_with_position << number
    unwanted_counter = 0
    wanted_counter += 1
  end
end

sum = 0
numbers_with_position.each do |num|
  sum += num
end

puts sum

#669171001