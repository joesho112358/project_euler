
def factorial(number)
  final_number = 1
  (1..number).each do |num|
    final_number *= num
  end
  final_number
end

sum = 0
(0..20).each do |number|
  sum += (factorial(20)/(factorial(number)*factorial(20-number)))**2
end
puts sum

#137846528820
