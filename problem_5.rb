#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

TestDivisors = []

2.upto(20) do |number|
  TestDivisors << number
end

def test_divisors(number)
  results = []
  
  TestDivisors.each do |divisor|
    if number.to_f / divisor % 1 == 0.0
	  results << true
	else
	  results << false
	  return results
	end
  end
  
  results
end

counter = 20
puts TestDivisors.inspect
while true do
  results = test_divisors(counter)
  results.uniq!
  break if results == [true]
  counter += 20
end

puts counter

#232792560   this is not fast