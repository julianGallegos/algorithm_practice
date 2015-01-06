def bracket_validator(input_code)
	brackets_to_look_for = {
		"{" => "}",
		"(" => ")",
		"[" => "]"
	}

	openners = brackets_to_look_for.keys

	clossing_brackets = brackets_to_look_for.values

	checking_stack = []

	input_code.split("").each do |char|
		if openners.include? char
		checking_stack << char
		end
	end



# 		If we see an opener, we push it onto the stack.
# If we see a closer, we check to see if it is the closer for the opener at the top of the stack. If it is, we pop from the stack. If it isn't, or if the stack is empty, we return False.
	p checking_stack
end	

bracket_validator(" function hi(word) {console.log('hi')} () {} ")