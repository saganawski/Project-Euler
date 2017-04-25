# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_num_divided
	set = (2..20).to_a
	num = 0
	solved = false

	count = 1

	while solved == false
		# find the module on count of 1..10 if all the numbers == 0 push up count and return solved true
		divisable_array = set.select {|int| count % int == 0}
		
		p count
		if divisable_array.length == 19
			puts "this is my count: #{count}"
			num = count
			solved = true
		else
			count +=1
		end
	end

	num 
end

p smallest_num_divided
