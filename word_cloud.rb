def find_word_count(input_string)
	
	word_counter = Hash.new(0)

	input_string.gsub!(/\W+/,' ')

	p array_of_input_words = input_string.split(" ")

	array_of_input_words.each do |word|
		word_counter[word.downcase] += 1
	end
	return word_counter
end


p find_word_count("After beating the eggs, Dana read the next step:'
'Add milk and eggs, then add flour and sugar.")