def find_repeating_nums(number_array)
	num_occurances = Hash.new(0)
	
	number_array.each do |num|
		num_occurances[num] += 1
	end
	p num_occurances.select{|key, value| value > 1}
end

find_repeating_nums([1,2,3,4,5,6,7,8,9,8])