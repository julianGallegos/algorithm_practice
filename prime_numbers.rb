def return_prime_nums(input_number)
	#if the range from number + 1
	results = []
	number_range = Range.new(2, input_number - 1)
	number_range.each do |values|
		if values % input_number == 0
			puts "it's not a prime num"
		else
			puts "it is prime"
		end
	end
end

return_prime_nums(4)