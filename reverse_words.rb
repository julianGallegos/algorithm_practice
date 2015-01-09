
# reverse a string in place

def reverse_all_characters_in_place(input_string)

	front_of_string = 0
	back_of_string = input_string.length - 1

	while front_of_string < back_of_string
		temp_front = input_string[front_of_string]
		input_string[front_of_string] = input_string[back_of_string]
		input_string[back_of_string] = temp_front

		front_of_string += 1
		back_of_string -= 1
	end
	return input_string
end


#brute force solution using helper method but not in place

def reverse_all_words(message)
	
	sorted_sentence = reverse_all_characters_in_place(message)
	
	sentence_array = sorted_sentence.split(" ")

	new_sentence = []

	sentence_array.each do |words|
		new_sentence << reverse_all_characters_in_place(words)
	end
	new_sentence.join(" ")
end

p reverse_all_words("julian is cool")





