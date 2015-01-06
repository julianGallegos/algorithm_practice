// javascript strings are immutable so technically they cannot be reversed in place w/o allocating additional memory

// the solution below relies on creating new memory w/o using .reverse

function reverse_string(inputString){
	var string_array = inputString.split("")
	reversed_char = []
	
	front_of_string = 0
	back_of_string = string_array.length - 1

	for (var i = 0; i < string_array.length; i ++){
		reversed_char.push(string_array[back_of_string])
		back_of_string -= 1
	}
	return reversed_char.join("")
}

console.log(reverse_string("hello"))

console.log(reverse_string("julian"))