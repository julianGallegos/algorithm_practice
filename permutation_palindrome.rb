def is_pallindrome?(input_string)
	if input_string.length <= 1
		return "true"
	elsif input_string[0] != input_string[-1]
		return "false"
	else is_pallindrome?(input_string[1..-2])
	end
end

p is_pallindrome?("civic")
