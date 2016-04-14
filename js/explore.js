// function that take a string as parameters and reverse it
// "hello" => "olleh"
// set i equals to length of hello, which is 5
// loop until i = 0
//count i from the last to the first index
// print from the last to the first index
function reverse(str){
	var store_str = '';
	for (var i = str.length -1; i >= 0; i --)
	store_str += str[i]; 
	return store_str;
}
console.log(reverse("hello"))
console.log(reverse("Hank"))

console.log(reverse("hello") !=1)
// function hello(str){
// 	console.log((str[4]) + (str[3]) + (str[2]) + (str[1])+ (str[0])); 
// }
// var store = hello("hello")
