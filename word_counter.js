function countOccurancesOfWords(inputString){
	wordArray = inputString.split(" ")
	wordCounter = {}
	for (var i = 0; i < wordArray.length; i++){
		if (typeof wordCounter[wordArray[i]] === "undefined"){
			wordCounter[wordArray[i]] = 1;
		} else {
			wordCounter[wordArray[i]] += 1;
		}
	}
	console.log(wordCounter)
}

console.log(countOccurancesOfWords("la la la hunger games yah yah yah"))
