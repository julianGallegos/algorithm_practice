def find_mode_from_array(input_array)
	number_counter = Hash.new(0)

	input_array.each do |number|
		number_counter[number] += 1
	end

	if number_counter.values.max < 2
		return "there is no mode"
	else
	  number_counter.select {|key, value| value == number_counter.values.max}
	end
end

p find_mode_from_array([1,1,2,3,4,5,6,7,8])