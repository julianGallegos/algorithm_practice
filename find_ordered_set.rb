# brute force solution
# def find_given_integer(integer_to_find, input_array) 

#  input_array.sort.each do |num|
#  	if num == integer_to_find
#  		return num
#  	end
#  end
# end

# p find_given_integer(1, [4,5,6,7,8,1])


# binary search solution

def find_given_integer(integer_to_find, input_array)
	input_array.sort!
	front_of_array = 0
	back_of_array = input_array.length + 1

	while front_of_array <= back_of_array

		mid_point = (front_of_array + back_of_array) / 2

		if input_array[mid_point] < integer_to_find
			front_of_array = mid_point + 1
		elsif input_array[mid_point] > integer_to_find
			back_of_array = mid_point - 1
		else
			return input_array[mid_point]
		end
	end
		
end




p find_given_integer(112, [0,112, 1,2,3,4,5,6])