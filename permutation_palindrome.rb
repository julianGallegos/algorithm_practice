#solved with recursion 

# def is_palindrome?(input_string)
# 	if input_string.length <= 1
# 		return true
# 	elsif input_string[0] != input_string[-1]
# 		return false
# 	else
# 		is_palindrome?(input_string[1..-2])
# 	end
# end


#next....solve this without using recursion

def is_palindrome?(input_string)
	front_of_string = 0
	back_of_string = input_string.length - 1
	
	if input_string.length == 1
		return true
	end

	if input_string[front_of_string] != input_string[back_of_string]
		return false
	end


	if input_string[front_of_string] == input_string[back_of_string]
		while front_of_string < back_of_string
		front_of_string += 1
		back_of_string -=1
		return true
		end

		
	end
end


#the while loop above only seems to compare the front and back of the string 
#the loop is already returning true even though it should be false

#as long as the first and last characters of the string are the same, the loop will always return true

# p is_palindrome?("a") == true

# p is_palindrome?("hi") == false

# p is_palindrome?("julian") == false

# p is_palindrome?("anna") == true

# p is_palindrome?("civic") == true

# p is_palindrome?("hannaLh") == false

p is_palindrome?("hiLh") == false



