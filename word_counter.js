// function wordCounter(inputString){
// 	var splitString = inputString.split(" ")
// 	var count = {}

// 	for (var i = 0; i < splitString.length; i++){
// 		if(count[splitString[i]] === splitString[i]){
// 			count[splitString[i]] += 1 
// 		} else {
// 			count[splitString[i]] = 1
// 		} 
// 	}
// 	console.log(count)
// }

// wordCounter("hi hi hi hey ho")

function countAllWords(inputString){


var wordArray = inputString.split(" ")
var counts = {}, i, value;
	for (i = 0; i < wordArray.length; i++) {
    value = wordArray[i];
    if (typeof counts[value] === "undefined") {
        counts[value] = 1;
    } else {
        counts[value]++;
    }
	}
    console.log(counts)
}

countAllWords("hi hi hi hi hey")

// function wordCounter(inputString){
// 	var wordArray = inputString.split(" ")
// 	var counts = {}, i, value;
// 	for(i = 0; i < wordArray.length; i++){
// 		value = inputString[i];
// 		if (typeof counts[value] === "undefined"){
// 			counts[value] = 1;
// 		} else {
// 			counts[value] ++;
// 		}
// 	}
// } 

// console.log(wordCounter("hi hi hi"))