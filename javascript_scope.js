// what will happen when this function is executed?  

var text = 'outside';

function logIt(){
    console.log(text);
    var text = 'inside';
};

logIt();

// this function will log undefied because text is called inside of logIt but hasn't been
// defined yet

// if you remove var text from inside of the function it looks for a global variable which is 'outside'