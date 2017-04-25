
# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def find_diff_sum_of_squares
	num_arry = (1..100).to_a

	sum_of_square = num_arry.map {|int| int * int}.reduce(:+)
	square_of_sum = num_arry.reduce(:+) * num_arry.reduce(:+)

	return square_of_sum - sum_of_square
end

p find_diff_sum_of_squares