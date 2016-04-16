// longest(array)
// {write a function that takes array of words or phrases and returns the longest word in the array. 
// "some string".length will do what you expect in JS.
// create a function name longest and take a array in a peremter.
// creat a array name dictionary contains three words.
// iterate through in the function to count the length of each word.  dictionary[i].store_length
// grasp the longest word}
function longest(array){
	if (array[0].length > array[1].length && x.length > array[2].length){
		console.log(array[0]);
	}
	else if (array[1].length > array[0].length && array[1].length > array[2].length){
		console.log(array[1]);
	}
	else if (array[2].length>array[0].length && array[2].length > array[1].length){
		console.log(array[2]);
	}
	else{
		console.log("error");
	};
	// Store all the length in one place. I want to compare the value of each index and grasp the largest.
	// google how to compare numbers' value
	// google how to find the largest number
	// console.log(largest number), something like this
}
var dictionary = ["eating", "shopping", "running"]
longest(dictionary)
// =================================
// write a function that takes two objects and checks to see if the objects share any key-value pair.
// create two objects that have keys in common
// create a function called searching that takes two objects.

// function searching(object1, object2)
function searching(object1, object2){
	// for (var i = 0; i<object1.length; i ++){
	console.log(object1)
	console.log(object2)
	console.log(Object.keys(object1)[0])  //all the keys in object1
	console.log(Object.keys(object2))
	console.log(object1[Object.keys(object1)[0]]) //access the index 0 value in object 1
	// if (Object.keys(object1)[0] === Object.keys(object2)[0] && object1[Object.keys(object1)[0]] === object1[Object.keys(object2)[0]])
	// 	{console.log(true)};
	// else if (Object.keys(object1)[1] === Object.keys(object2)[1] && object1[Object.keys(object1)[1]] === object1[Object.keys(object2)[1]])
	// 	{console.log("true")};
	// else{
	// 	(console.log("false"));
	// };
}
var user1 = {name: 'Hank', age: '18'}
var user2 = {name: 'Claire', age: '18'}
searching(user1, user2)


