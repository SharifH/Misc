function main(){
  "use strict";

  var word = "watermelon";
  var guess_array = ["_","_","_","_","_","_","_","_","_","_"]
  var guesses = 8
  var answer_arr = (word.split(''));
  console.log(guess_array);

  function arrayAreaEqual(ary1,ary2){
    return(ary1.join('') === ary2.join(''));
  }

  function guess(letter){
    var index = answer_arr.indexOf(letter);
    if(answer_arr.indexOf(letter)> -1){
      guess_array.splice(index, 1, letter);
      guess_array.splice(answer_arr.lastIndexOf(letter), 1, letter);
      return console.log(guess_array);
    }else{
      console.log("Wrong! You have " + guesses + "guesses remaining.");
      guesses = guesses -1;
    }
  }

  while(guesses > -1 && arraysAreEqual(guess_array, answer_arr)== false){
    var input = prompt("Please enter a letter");
    guess(input);
  }
}
main();