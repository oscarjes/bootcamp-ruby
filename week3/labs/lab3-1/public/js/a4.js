var numbers = [1,2,3,4,5,6,7,8,9,10,11]

for (i = 0; i < 11; i++){
  console.log("i = " + i);
}

numbers.forEach(function(e){
  console.log("number " + e);
})

for (i = 0; i < numbers.length; i++){
  if (numbers[i] > 5)
    console.log("larger than 5: " + numbers[i]);
}

numbers.forEach(function(e){
  if (e > 5)
    console.log("larger than 5: " + e);
})

console.log(numbers.pop());

console.log(numbers.reverse());
console.log(numbers.slice().reverse());

var bigNumbers = [100, 200, 300, 400];

var allNumbers = numbers.concat(bigNumbers)
console.log(allNumbers)

allNumbers.sort(function(a,b){
  return b-a
})

console.log(allNumbers)
