var color = ['blue', 'red', 'yellow', 'black'];
var horses = ['Hank', "Sam", "Erika", "Jen"];
color.push("White");
horses.push("Jake");
console.log(color);
console.log(horses);
var object = {Hank: 'blue', Sam: 'red', Erika: 'yellow', Jen: 'black'};
console.log(object)

// var object_new = {horses[0]: color[0],}
// console.log(object_new)

function Car(color, speed, isGoodCar) {
  console.log("Our new car:", this);
  
  this.color = color;
  this.speed = speed;
  this.isGoodCar = isGoodCar;
  
  this.sounds = function() { console.log("Vroooom"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
  
}

var anotherCar = new Car("blue", 50, true);
console.log(anotherCar);
console.log("Our car can roar:");
anotherCar.sounds();
console.log("----");

var thirdCar = new Car("red", 100, false);
console.log(thirdCar);
console.log("Our car can roar:");
anotherCar.sounds();
console.log("----");