//  Problem:
//  in a shop there are k kinds of postcards.
//  we want to send postcards to n friends.
//  how many different ways can this be done?
//  Modifcation 1:
//  what happens if we want to send them different cards?
//  Modification 2:
//  what happens if we want to send two different cards to each of them (but different persons may get the same card?)


function FriendsAndPostcards(){
  this.friends = parseInt(args.friends);
  this.postcards = parseInt(args.postcards);
 

  this.withRepetition = function(){
    return comb(this.friends, this.postcards);
  }
  
  this.withoutRepetition = function(){
    max = Math.max(this.friends, this.postcards);
    min = Math.min(this.friends, this.postcards);
    return fact(max)/fact(max-min);
  }

  this.twoCards = function(){
    this.postcards = 2;
    return this.withRepetition();
  }
}

fact = function(input){
  output = 1;
  for (i = 1; i <= input; i++){
    output = output * i
  }
  return output;
}

comb = function(val1, val2){
  return Math.pow(val1, val2);
}

log = function(output){
  console.log(output);
}

var args = {friends: process.argv.slice(2), postcards: process.argv.slice(3)};
var sendFriendlyPostcards = new FriendsAndPostcards()
var repeatedPostcards = sendFriendlyPostcards.withRepetition();
var unrepeatedPostcards = sendFriendlyPostcards.withoutRepetition();
var justTwo = sendFriendlyPostcards.twoCards();

log('/////////////////');
log('with repetition: ' + repeatedPostcards);
log('without repetition: ' + unrepeatedPostcards);
log('when we have two cards: ' + justTwo);
log('/////////////////');

