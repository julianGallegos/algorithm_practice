// since javascript strings are immutable, you can't do an inplace check

function isPalindrome(input_string){
	if (input_string === input_string.split("").reverse().join("")){
		return true
	} else {
		return false
	}
}

console.log(isPalindrome("civic"))

console.log(isPalindrome("julian"))
