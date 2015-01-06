// since javascript strings are immutable, you can't do an inplace check

// function isPalindrome(input_string){
// 	if (input_string === input_string.split("").reverse().join("")){
// 		return true
// 	} else {
// 		return false
// 	}
// }


//refactored solution

function isPalindrome(input_string){
	return input_string === input_string.split("").reverse().join("")
}

console.log(isPalindrome("civic") === true)

console.log(isPalindrome("level") === true)

console.log(isPalindrome("levels") === false)

console.log(isPalindrome("julian") === false)

