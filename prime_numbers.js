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


console.log(isItPrime(4) === false)

console.log(isItPrime(13) === true)

console.log(isItPrime(31) === true)

console.log(isItPrime(1) === true)







