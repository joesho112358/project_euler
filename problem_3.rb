#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

require_relative 'common_functions'
include CommonFunctions

factors = get_relevant_factors 600851475143

prime_factors = get_prime_factors factors

puts prime_factors.last

#6857