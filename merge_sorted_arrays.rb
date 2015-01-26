def merge_sorted_arrays(first_array, second_array)

	merged_array = []

	merged_array_total_length = first_array.length + second_array.length


	current_index_merged_array = 0


	current_index_first_array = 0

	current_index_second_array = 0

	while current_index_merged_array < merged_array_total_length
	  head_of_first = first_array[current_index_first_array]
	  head_of_second = second_array[current_index_second_array]

	  p "this is the head >>>>> #{head_of_first}"
	  p " this is the second head >>>>>> #{head_of_second}"
	  

		if head_of_first < head_of_second

		merged_array[current_index_merged_array] = head_of_second
		current_index_second_array += 1

		else head_of_first > head_of_second

			merged_array[current_index_merged_array] = head_of_first
			current_index_first_array += 1
			
		end
		current_index_merged_array += 1
	end
	return merged_array
end

p merge_sorted_arrays([3,4,6,10,11,15],[1,5,8,12,14,19])







