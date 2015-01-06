
function getGreatestDifference(inputArray){
	var sortedArray = inputArray.sort()

	var greatestDifference = sortedArray[sortedArray.length - 1] - sortedArray[0]

	return greatestDifference

}

console.log(getGreatestDifference([1,2,3,2,5]))