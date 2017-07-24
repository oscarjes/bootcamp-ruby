// Example
var ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"]
};

// Only change code below this line.

var myDog = {
  "name": "Scooby",
  "legs": 4,
  "tails": 1,
  "friends": ["wilma", "scrabby"] 
};

var rating = {}

rating["johhny cash"] = 10;
rating["pavarotti"] = 3;
rating["xuan"] = 11;
rating["michael hackson"] = 9;

console.log(rating);

var task = {"name": "learn JS", "priority": 1}
console.log("task, task.name, task.priority", task, task.name, task.priority)

var justin = {"age": 23, "name": "Justin"}
var selena = {"age": 25, "name": "Selena"}
var loi = {"age": 99, "name": "Loi"}
var bob = {"age": 69, "name": "Bob"}

function toSentence1(obj) {
  return obj.name + " is " + obj.age + " years old.";
}

console.log(toSentence1(justin))

function toSentence2(obj) {
  if (obj.hasOwnProperty("name")) {
    return `${obj.name} is ${obj.age} years old.`;
} else {
  console.log("Name property is missing.");
}}

console.log(toSentence2(justin))

console.log(Object.keys(myDog))
console.log(Object.values(myDog))