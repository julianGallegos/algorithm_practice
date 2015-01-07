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


# p is_a_prime_number?(29) == true

# p is_a_prime_number?(17) == true

# p is_a_prime_number?(13) == true

# p is_a_prime_number?(31) == true

# p is_a_prime_number?(4) == false

# p is_a_prime_number?(16) == false

def find_prime_numbers(input_array)

	prime_numbers_found = []

	i = 2
	input_array.each do |num|
		while i < num
			if is_a_prime_number?(num)
				prime_numbers_found << num
			end
			i += 1
		end


	end
	
	return prime_numbers_found

end

p find_prime_numbers([1,2,3,4,5,6,7,8,9,10,11,12,13])
