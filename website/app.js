let nextListId = 0
 let itemList = []
 const itemListKey = "items"

 localStorage.setItem("key", "9")

 initializeData()



 function initializeData() {
   let stringData = localStorage.getItem(itemListKey)
   if (stringData) {
     // convert string stored in local storage to JS array
     itemList = JSON.parse(stringData)

     // add each item name to an unordered list on the page
     for (let i = 0; i < itemList.length; i++) {
       addItemToPage(itemList[i])
     }
   }
 }


 function addItem() {
   // find input element
   let input = document.getElementById("input-item")
   if (!input) {
     return
   }

   // grab text from input
   let itemName = input.value

   addItemToPage(itemName)

   // add item to localStorage
   itemList.push(itemName)
   stringData = JSON.stringify(itemList)
   localStorage.setItem(itemListKey, stringData)

   input.value = ""
 }


 function addItemToPage(itemName) {

   // find existing parent list element
   let itemListElement = document.getElementById("checkout-list")
   if (!itemListElement) {
     return
   }

   // create a new list item
   let newListItem = document.createElement("li")
   newListItem.id = "list-item-" + nextListId
   nextListId += 1
   newListItem.className = "item-list-item"
   newListItem.addEventListener("click", toggleItemState)

   // add text to new list item
   newListItem.innerHTML = itemName

   // add list item to existing list
   itemListElement.appendChild(newListItem)
 }


 function toggleItemState(event) {
   // get item
   let listItem = document.getElementById(event.target.id)
   if (!listItem)
     return

   // change strike-through state
   let isCheckedOff = listItem.style.textDecoration === "line-through"

   listItem.style.textDecoration = isCheckedOff 
     ? "none"
     : "line-through"
   listItem.style.color = isCheckedOff 
     ? "#000000"
     : "#FFFFFF"
 } 