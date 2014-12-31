#solved with recursion 

def is_palindrome?(input_string)
	if input_string.length <= 1
		return true
	elsif input_string[0] != input_string[-1]
		return false
	else
		is_palindrome?(input_string[1..-2])
	end
end


#next....solve this without using recursion




p is_palindrome?("a") == true

p is_palindrome?("hi") == false

p is_palindrome?("julian") == false

p is_palindrome?("anna") == true

p is_palindrome?("civic")



