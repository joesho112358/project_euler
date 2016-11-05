module CommonFunctions

  def get_relevant_factors(number)
    upper_limit = number ** 0.5

    factors = []
    2.upto(upper_limit) do |factor|
      factors << factor if (number.to_f / factor) % 1 == 0.0
    end
  
    factors
  end

  def get_prime_factors(numbers)
    prime_factors = []

    numbers.each do |number|
      factors = get_relevant_factors number
	  prime_factors << number if factors == []
    end
  
    prime_factors
  end
end