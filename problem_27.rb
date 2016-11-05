def find_factors(number)
  if number < 0
    number *= -1
  end
  counter = 2
  factors = [1]
  while counter <= number/2
    factors << counter if number % counter == 0
    counter += 1
  end
  factors
end

list = []
(-999..999).each do |a|
  (-999..999).each do |b|
    n = 0
    temp_list = []
    not_prime = false
    until not_prime
      if find_factors(n*n+a*n+b) == [1]
        temp_list << [n*n+a*n+b]
      else
        list << [a, b, temp_list.count]
        not_prime = true
      end
      n += 1
    end
  end
end

@max = [0, 0, -1]
list.each do |combo|
  @max = combo if @max[2] < combo[2]
end
puts @max[0]*@max[1]

#-59231