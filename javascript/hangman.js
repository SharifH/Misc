var answer = "watermelon"
  , splitAnswer
  , copy
  , letter
  , i
  ;

// need to compare one letter against word
// compare letter against letter: guess === letter
splitAnswer = answer.split('');
console.log(splitAnswer);
//  begin       each time           each time
for (i = 0; i < splitAnswer.length; i += 1){
  console.log(i, splitAnswer.length, splitAnswer[i]);
  // code
}
//