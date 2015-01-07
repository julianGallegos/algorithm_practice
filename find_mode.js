function findMode(input_array){
	
	var number_counter = {}
	var greatestFrequency = 0
	for (var i = 0; i < input_array.length; i++){
		if (number_counter[input_array[i]] === "undefined"){
			number_counter[input_array[i]] = 0
		} else {
			number_counter[input_array[i]] += 1
		}
	}
	return number_counter
}

console.log(findMode([1,2,3,4,5,5]))

// solution still returns a hash with keys of the numbers but values as NAN