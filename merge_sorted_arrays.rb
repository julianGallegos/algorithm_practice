def merge_sorted_arrays(first_array, second_array)
	
	combined_array = []

	total_input_array_length = first_array.length + second_array.length
	

	first_array_head = first_array[0]
	second_array_head = second_array[0]
	while combined_array.length < total_input_array_length
		
			if first_array_head < second_array_head
					combined_array << first_array.shift
			 		
			else
				combined_array << second_array.shift
		 end
	end
	p combined_array
end

merge_sorted_arrays([3,4,6,10,11,15],[1,5,8,12,14,19])

#initialize an empty array to store both merged arrays 
#iterate through each array and push each value into the new array
