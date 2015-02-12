// write a function that takes a string and returns the index of where the capital letters occur on the string

// follow up questions, how to account for spaces in a string?

var capitals = function (word) {
	var word_array = word.split('');
  var index_of_capitals = [];
  for (var i = 0; i < word_array.length; i++){
    if (word_array[i] == word_array[i].toUpperCase()){
      index_of_capitals.push(word_array.indexOf(word_array[i]));
    }
  }
  return index_of_capitals;
};


// tests

// can't compare if capitals("CaPiTaLs") == [0,2,4,6] since can't compare these two objects



console.log(capitals("CaPiTaLs")) // prints out [0,2,4,6])

console.log(capitals("JULian")) // prints out [0,1,2]

console.log(capitals("A")) // prints out [0]

console.log(capitals("hello World")) // prints out[6]
