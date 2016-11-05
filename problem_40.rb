number_string = "."

(1..10000000).each do |number|
  number_string << number.to_s
end

puts number_string[1].to_i*number_string[10].to_i*number_string[100].to_i*number_string[1000].to_i*number_string[10000].to_i*number_string[100000].to_i*number_string[1000000].to_i

#210