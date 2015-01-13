def count_occurance_of_words(input_string)
	word_counter = Hash.new(0)
	input_string_array = input_string.split(" ")

	input_string_array.each do |word|
		word_counter[word] += 1
	end
	return input_string
end


count_occurance_of_words("hello hello hello hi")

# => hello: 3, hi: 1


def switch_keys_and_key_values(input_hash)


end




switch_keys_and_key_values({1 => 7, 3 = >4})

#results = {7: [1, 3, 4]}
					# {3: [1, 7, 4]}

