# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
	num = (100..999).to_a
	num2 = (100..999).to_a
	palindrom_array = []
	
	num.each do |int|
		num2.each do |int2|
			 product = int * int2

			 if product.to_s == product.to_s.reverse
			 	palindrom_array << product
			 end
		end
	end
	return palindrom_array.sort.last
end

p largest_palindrome

