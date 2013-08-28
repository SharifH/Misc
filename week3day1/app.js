// This is the main function for my app
function main() {
	"use strict";

	console.log("hello world!");

	// I must declare all of my cariable before I use them
	var i = 4
		, str = "hello world"
		, arr = [2, 11, 42, 37]
		, obj = {awesome: "Megan", wayAwesome: "Brian"}
		;

	// I'll print out my variables
	console.log("number", i);
	console.log("string", str);
	console.log("array", arr);
	console.log("object", obj);

	function sorter(a, b) {
		if (a > b) {
			return 5;
		} else{
			return -5;
		}
	}

	function randomizeArray ( myArray ) {
  	var i = myArray.length, j, temp;
  	if ( i === 0 ) return false;
  	while ( --i ) {
	     j = Math.floor( Math.random() * ( i + 1 ) );
	     temp = myArray[i];
	     myArray[i] = myArray[j]; 
	     myArray[j] = temp;
	   }
	}
	console.log
	randomizeArray(arr);
	// arr.sort(sorter); // [2, 11, 37, 42]
	// sorter(3,5); // -5
	
	function printToConsole(el, i){
		console.log(i);
	}

	arr.forEach(printToConsole);


	// console.log('sort', arr.sort(sorter));

	// console.log("sorter", sorter(3, 5));
}

main();