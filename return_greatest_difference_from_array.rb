def return_greatest_difference(input_array)

	input_array.sort!

	greatest_difference = input_array[-1] - input_array[0]

	return greatest_difference

end

p return_greatest_difference([5,2, 4,5, 1111, 23, 3, 3,9])