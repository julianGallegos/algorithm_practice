# two solutions for getting greatest difference from an array of numbers

def get_greatest_difference(input_array)

	greatest_difference = input_array.max - input_array.min

	return greatest_difference

end


def get_greatest_difference(input_array)

	smallest_num = input_array[0]
	largest_num = 0

	input_array.each do |num|
		if num > largest_num
			largest_num = num
		end
		if num < smallest_num
			smallest_num = num
		end
	end
	return largest_num - smallest_num

end

p get_greatest_difference([17,11,1,3,2,4,13, 1,4,9, 55, 111]) == 110

p get_greatest_difference([1,2,3,4,5]) == 4

p get_greatest_difference([4,7,9,15,18,2,11,14,33,37,6]) == 35