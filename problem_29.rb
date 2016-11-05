array_of_number = []

(2..100).each do |number_a|
  (2..100).each do |number_b|
    array_of_number << number_a**number_b
  end
end

array_of_number = array_of_number.uniq.sort

puts array_of_number.count

#9183