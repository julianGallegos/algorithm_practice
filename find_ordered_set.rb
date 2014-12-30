# brute force solution
def find_given_integer(integer_to_find, input_array) 

 input_array.sort.each do |num|
 	if num == integer_to_find
 		return num
 	end
 end
end

p find_given_integer(1, [4,5,6,7,8,1])