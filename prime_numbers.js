function isItPrime(num){
	var divideBy = 2
	while (divideBy < num){
		var isDivisible = num % divideBy
			if (isDivisible === 0){
				return false
			}
			divideBy += 1
	}
			return true
}


// console.log(isItPrime(4) === false)

// console.log(isItPrime(13) === true)

// console.log(isItPrime(31) === true)

// console.log(isItPrime(1) === true)


function findPrimeNumFromArray(inputArray){

	var prime_numbers_found = []
	for (var i = 0; i < inputArray.length; i++){
			
			if(isItPrime([inputArray[i]])){

			prime_numbers_found.push(inputArray[i])
			}
	}
	return prime_numbers_found
}

console.log(findPrimeNumFromArray([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,113]))




