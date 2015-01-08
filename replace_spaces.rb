#question from cracking the coding interview

# replace all spaces of input string with "blankspace" 

# input_string = "And I'll write"

# output_string = "AndblanckspaceI'llblackspacewrite"

#brute force solution

def replace_blank_space(input_string)
	#determine where the spaces are in the input string and return an index number
	#replace that index number with "blannkspace"
	split_string_array = input_string.split(" ")

	split_string_array.map! do |word|
		 word + "blankspace"
	end
	return split_string_array.join("")
end

p replace_blank_space("And I'll write")

