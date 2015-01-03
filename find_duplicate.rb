
def show_all_duplicates(input_array)
	@amount_of_times_repeated = Hash.new(0)

	input_array.each do |num|
		@amount_of_times_repeated[num] += 1
	end
	return @amount_of_times_repeated
end


p show_all_duplicates([1,2,3,4,5,6,7,8,8,8,8,9,1,2,3,4,5,6,7])