#A palindromic number reads the same both ways.
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

class String
  def palindrome?
    result = true
    size = self.length
	(size/2).times do |index|
      result = false unless self[index] == self[size - 1 - index]
	end
	result
  end
end

products = []
#brute force time!
100.upto(999) do |n|
  100.upto(999) do |m|
    product = n * m
    products << product if product.to_s.palindrome?
  end
end

puts products.sort.last

#906609