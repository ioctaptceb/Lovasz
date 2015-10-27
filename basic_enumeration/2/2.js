// we have k distinct postcards for friends
// and we want to send them to all of our n friends
// a friend can get any number of postcards, including 0
// how can this be done?
// what happens if we send at least 1 post card to each friend?

function FriendsAndPostcards(){
  this.friends = parseInt(args.friends);
  this.postcards = parseInt(args.postcards);
  
  this.differentCards = function(){
    max = Math.max(this.friends, this.postcards);
    min = Math.min(this.friends, this.postcards);
    return fact(max)/fact(max-min);
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
var unrepeatedPostcards = sendFriendlyPostcards.differentCards();

log('/////////////////');
log('distinct cards: ' + unrepeatedPostcards);
log('/////////////////');


