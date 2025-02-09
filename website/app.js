let nextListId = 0
 let itemList = []
 const itemListKey = "items"

 localStorage.setItem("key", "9")

 initializeData()

 let cartTotal = 0;

 function initializeData() {
   let stringData = localStorage.getItem(itemListKey)
   if (stringData) {
     
     itemList = JSON.parse(stringData)  // convert string stored in local storage to an array

    
     for (let i = 0; i < itemList.length; i++) {   // add each item name to an unordered list on the page
       addItemToPage(itemList[i])
     }
   }
 }


 function addItem(itemName, itemCost) {  // grab info from input & add item to localStorage 
   itemList.push(itemName)
   stringData = JSON.stringify(itemList)
   localStorage.setItem(itemListKey, stringData)

   console.log(itemName)   
   console.log(itemCost)
   cartTotal = Number(localStorage.getItem("Total Cost"))    // add item cost to total
   cartTotal += itemCost
   localStorage.setItem("Total Cost", cartTotal)
 }


 function addItemToPage(itemName) {
   let itemListElement = document.getElementById("checkout-list")    // find existing parent list element
   if (!itemListElement) {
     return
   }

   
   let newListItem = document.createElement("li")    // create a new list item
   newListItem.id = "list-item-" + nextListId
   nextListId += 1
   newListItem.className = "item-list-item"
   newListItem.addEventListener("click", toggleItemState)

   
   newListItem.innerHTML = itemName   // add text to new list item

   
   itemListElement.appendChild(newListItem)   // add item to existing list
 }


 function toggleItemState(event) {                           // line out items you don't want to buy.
   let listItem = document.getElementById(event.target.id)
   if (!listItem)
     return

   let isCheckedOff = listItem.style.textDecoration === "line-through"

   listItem.style.textDecoration = isCheckedOff 
     ? "none"
     : "line-through"
   listItem.style.color = isCheckedOff 
     ? "#000000"
     : "#000000"
 } 

 function displayCartTotal() {
   console.log("cart total " + cartTotal)
   document.getElementById("cartTotal").innerHTML = localStorage.getItem("Total Cost")
 }