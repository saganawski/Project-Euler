# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(num)
  factors_array = []
  n=2
  while n <= num
    if num % n == 0
      until num % n !=0
        factors_array << n
        num = num/n
      end
    end
    n +=1
  end
 factors_array[-1]
end

p largest_prime_factor(600851475143)