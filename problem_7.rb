#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?

require_relative 'common_functions'
include CommonFunctions

counter = 2
list_of_primes = []

while list_of_primes.length < 10001
  factors = get_relevant_factors counter

  prime_factors = get_prime_factors factors
  
  list_of_primes << counter if prime_factors == []
  
  counter += 1
end

puts list_of_primes.last

#104743