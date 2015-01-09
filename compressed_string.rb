#problem from cracking the coding interview

#write a function that returns a compressed string with all the repeated char as numbers

#input_string = "aaaabbbcddee"

#output = "a4b3c1d2e2"

def compressed_string(input_string)
	char_counter = Hash.new(0)
	string_array = input_string.split("")

	string_array.each do |letter|
		char_counter[letter] += 1
	end
	char_counter.each do |key, value|
		print "#{key}#{value}"
	end
end

compressed_string("aaaabbbcddeeeeee")