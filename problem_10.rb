def find_factors(number)
  counter = 2
  factors = [1]
  while counter <= Math.sqrt(number)
    factors << counter if number % counter == 0
    counter += 1
  end
  factors
end

counter = 3
primes = [2]
while counter < 2000000
  prime_test = find_factors counter
  primes << counter if prime_test.count == 1
  puts counter if counter%10001 == 0
  counter += 2
end

running_total = 0

primes.each do |number|
  running_total += number
end

puts running_total

#142913828922

