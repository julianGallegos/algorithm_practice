def fibonacci(target_number)
	if target_number == 0 || target_number == 1
			return target_number
	else fibonacci(target_number - 1) + fibonacci(target_number - 2)
	end

end

p fibonacci(13)