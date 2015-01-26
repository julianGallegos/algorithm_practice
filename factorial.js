
function getFactorial(input_number){
	if (input_number === 1){

		return input_number
	}
	if (input_number === 0){
		return 0
	} else {
		return input_number * getFactorial(input_number - 1)
	}
}

console.log(getFactorial(5) === 120)

console.log(getFactorial(0) === 0)

console.log(getFactorial(4) === 24)