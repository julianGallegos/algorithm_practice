# this checks if a single number is prime

def is_a_prime_number?(num)
	i = 2
	while i < num
		is_divisible = (num % i) == 0
			if is_divisible
				return false
			end
			i += 1
		end 
		true
end

p is_a_prime_number?(29) == true

p is_a_prime_number?(17) == true

p is_a_prime_number?(13) == true

p is_a_prime_number?(31) == true

p is_a_prime_number?(4) == false

p is_a_prime_number?(16) == false


# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself