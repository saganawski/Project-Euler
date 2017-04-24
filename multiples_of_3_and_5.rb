# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3_and_5(num)
	multiples = []
	num.times do |int|
		if int % 3 == 0
			multiples << int
		elsif int % 5 == 0
			multiples << int 
		end
	end
	return multiples.reduce(:+)
end

p multiples_of_3_and_5(1000)