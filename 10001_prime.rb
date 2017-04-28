# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def prime_number_finder
	prime_array = [2,3]
	count = 4 
	loop do
		break if prime_array.length == 10001
		if prime?(count)
			prime_array << count
		end

		count += 1
	end
	return prime_array.last
end


def prime?(num)
	if num == 2
		return true
	elsif num % 2 == 0
		return false
	end

	count = num -1
	until count < 3
		if num % count == 0
			return false
		end
		count -= 1
	end
	return true
end

p prime_number_finder