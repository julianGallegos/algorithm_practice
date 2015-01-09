#question from cracking the coding interview

# replace all spaces of input string with "blankspace" 

# input_string = "And I'll write"

# output_string = "AndblanckspaceI'llblackspacewrite"

#brute force solution

# def replace_blank_space(input_string)
# 	#determine where the spaces are in the input string and return an index number
# 	#replace that index number with "blannkspace"
# 	split_string_array = input_string.split(" ")

# 	split_string_array.map! do |word|
# 		 word + "%20"
# 	end
# 	return split_string_array.join("")
# end

# p replace_blank_space("And I'll write")



def replace_blank_space(input_string)
		current_index = 0
		back_of_string = input_string.length - 1

		while current_index < back_of_string
			if input_string[current_index] == " "
				input_string[current_index] = "%20"
			end
				current_index += 1
				#back_of_string needs to update to represent new size of input_string size
				p back_of_string = input_string.length - 1
		end
	return input_string
end

p replace_blank_space("a b c d e f g h i j k")

