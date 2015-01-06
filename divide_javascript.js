// divide a number in javascript w/o using division or modulo operator

function divideNum(number, dividor){
	var timesSubtracted = 0;
		while (number > 0){
			number = number - dividor
			timesSubtracted += 1
		}
		return timesSubtracted
}

console.log(divideNum(31, 5))