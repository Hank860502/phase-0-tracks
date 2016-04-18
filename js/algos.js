// longest(array)
// {write a function that takes array of words or phrases and returns the longest word in the array. 
// "some string".length will do what you expect in JS.
// create a function name longest and take a array in a peremter.
// creat a array name dictionary contains three words.
// iterate through in the function to count the length of each word.  dictionary[i].store_length
// grasp the longest word}
function longest(array){
	var store_longest =array[0]
	for (var i=1; i<array.length; i++){
		if (array[i].length > store_longest.length) {
			store_longest = array[i]
		}
	}
	return (store_longest)
}
	// Store all the length in one place. I want to compare the value of each index and grasp the largest.
	// google how to compare numbers' value
	// google how to find the largest number
	// console.log(largest number), something like this

// =================================
// write a function that takes two objects and checks to see if the objects share any key-value pair.
// create two objects that have keys in common
// create a function called searching that takes two objects.

// function searching(object1, object2)
function searching(object1, object2){
	for (var value in object1) {
    if (object1[value] == object2[value]){
    	return true;
    }
}
    	return false;  //when I code: else return false, the output is not correct,but with this, it works.
}
function stringMachine(number){
	var array = [];
    while (number >0){
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    for( var i=0; i < 10; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    array.push(text);
    number -=1
}
 console.log(array)
}



var dictionary = ["eating", "shopping", "running"]
console.log(longest(dictionary))
var user1 = {name: 'Hank', age: 18}
var user2 = {name: 'Han', age: 18}
console.log(searching(user1, user2))
stringMachine(5)



