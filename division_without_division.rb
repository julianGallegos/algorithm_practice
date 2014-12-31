
def divide_number(dividend, divisor)
	num_of_times_added = 0
	current_total = 0
	while current_total < dividend
		num_of_times_added += 1
		current_total += divisor
		if current_total > dividend
			num_of_times_added -= 1
		end
	end
	return num_of_times_added
end

p divide_number(21, 4) == 5

p divide_number(21, 3) == 7

p divide_number(1, 1) == 1

p divide_number(100, 25) == 4

p divide_number(101, 25) == 4

