#The sum of the squares of the first ten natural numbers is,
#1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)^2 = 55^2 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

NaturalNumberList = []

1.upto(100) do |number|
  NaturalNumberList << number
end

sum_of_squares = 0
sum = 0

NaturalNumberList.each do |number|
  sum_of_squares += number ** 2
  sum += number
end

puts sum**2 - sum_of_squares

#25164150