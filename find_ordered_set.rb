# brute force solution
# def find_given_integer(integer_to_find, input_array) 

#  input_array.sort.each do |num|
#  	if num == integer_to_find
#  		return num
#  	end
#  end
# end

# p find_given_integer(1, [4,5,6,7,8,1])


# def find_given_integer(integer_to_find, input_array)
# 	input_array.sort!
# 	low = 0
# 	high = input_array.length - 1
# 	while high >= low

# 		mid_point_of_array = (high + low) / 2

# 		if input_array[mid_point_of_array] < integer_to_find
# 			low = mid_point_of_array + 1
# 		elsif input_array[mid_point_of_array] > integer_to_find
# 			high = mid_point_of_array - 1
# 		else 
# 			return input_array[mid_point_of_array]
# 		end
# 	end
# end	






def find_given_integer(integer_to_find, input_array)

	input_array.sort!
	low_value = 0
	high_value = input_array.length - 1
	times_iterated = 0

	while low_value <= high_value
		
		mid_point = (low_value + high_value) / 2

		if input_array[mid_point] < integer_to_find
			low_value = mid_point + 1
			times_iterated += 1
		elsif input_array[mid_point] > integer_to_find
			high_value = mid_point - 1
			times_iterated += 1
		else
			return input_array[mid_point]
		end
			p "Number of divisions before finding the number #{times_iterated}"
	end

end





p find_given_integer(112, [0,1,2,1,4,5,2,2,4,7,8,9,10,12,14,22,112])