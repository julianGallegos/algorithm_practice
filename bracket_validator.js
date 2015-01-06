
function balancedBrackets(inputCode){
	bracketCounter = {};
	codeArray = inputCode.split("")
	console.log(codeArray)
	for (var i = 0; i < codeArray.length; i++){
		if (codeArray[i] != "{" || "(" || "["){
			bracketCounter[codeArray[i]] = codeArray[i]
	}
	console.log(bracketCounter)
	}
}

balancedBrackets("function hi(word) {console.log('hi')}")