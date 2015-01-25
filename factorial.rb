

def factorial(input_number)
	if input_number == 1
		return 1
	else input_number * factorial(input_number - 1)
	end

end

p factorial(5) == 120

p factorial(1) == 1

p factorial(4) == 24