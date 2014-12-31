

def reverse_string_in_place(input_string)
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

p reverse_string_in_place("julian") == "nailuj"

p reverse_string_in_place("hello") == "olleh"

p reverse_string_in_place("bye") == "eyb"





