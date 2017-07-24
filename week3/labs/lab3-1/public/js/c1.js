// var h1 = document.getElementById("heading")

var h1 = document.getElementsByTagName("h1")[0]

console.log("h1: ", h1);
console.log("h1 id ", h1.id);
console.log("h1 style's color", h1.style.color);
console.log("h1 innerText ", h1.innerText);
h1.style.color = "blue";
h1.innerText = "Milestone C1 - Updated";

h1.className = "milestone"
console.log("h1 with class: ", h1)

var items = document.getElementsByClassName("item");

console.log("items: ", items);
console.log("item 0: ", items[0]);
console.log("item 0's innerHTML: ", items[0].innerHTML);

for (i = 0; i < items.length; i++){
  items[i].innerHTML = items[i].innerHTML.toUpperCase();
  console.log(items[i].innerHTML)
}

// items[0].innerHTML = items[0].innerHTML.toUpperCase();

// console.log("item 0's innerHTML in upcase: ", items[0].innerHTML);

