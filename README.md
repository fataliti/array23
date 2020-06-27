**Arrays for game maker 2.3**

> Some examples
```
//Just create a new array
a = new Array();

//Add values in array
//push(value)
a.push("val_1");
a.push("val_2");
a.push("val_3");

//Get a value of the position
//get(index)
a.get(0) // return "val_1"
//if out of range return undefined

//Size of the array
//size()
a.size() // return 2

//Return index of the first match in array
//indexOf(value)
a.indexOf("val_2") // return 1
//if not in array return -1

//Return index of the last match in array
//lastIndexOf(value)
a.lastIndexOf("val_2") // return 1
//if not in array return -1

//String representation of array
//toString()
a.toString()

//Return true if value in array or false if not
contains(value)
a.contains("val_1") //return true
a.contains("val_4") //return false

//Return a new array by appending the elements of another array
//concat(Array)
b = new Array();
b.push(1);
c = a.concat(b) //["val_1", "val_2", "val_3", "1"]

//for loop 
//foreach(cb(element, index))
//if cb return true loop will be break
a.foreach(function(element, index){
  show_debug_message([index, element])
})

//Make a copy of array
//copy()
aa = a.copy(); 

//Equals two array
//equals(Array) 
a.equals(aa) // return true

//Sort values in array
//sort(ascend) 
cc = new Array();
cc.push(3)
cc.push(9)
cc.push(1)
cc.toString() // [3, 9, 1]
cc.sort(true) 
cc.toString() // [1, 3, 9]

//Resers array
//reverse() 
cc.reserse() // [9, 3, 1]

//Resize array
//resize(newSize) 
cc.resize(5) // [9, 3, 1, 0, 0]

//Remove and return first value of array
//shift()
sh = cc.shift() // [3, 1, 0, 0] 
// sh is = 9, if array is empty return undefined

//Remove and return last value of array
//pop()
pp = cc.pop() // [3, 1, 0] 
// pp is = 0, if array is empty return undefined

//Returns a string representation of array, with separating between each element.
//join(sep) 
cc.join(" + ") // "3 + 1 + 0"


//Removes the first math array
//remove(value) 
cc.remove(3) // return true;
//cc is [1, 0] 


//Add  element at the start of array
//unshift(value) 
cc.unshift("string")
//cc is ["string", 1, 0] 


//Return a new array containing those elements of the array which returned true
//filter(cb(element)) 
ss = cc.filter(function(value){
  if isString(value)
    return true
})
//cc is ["string", 1, 0] 
//ss is ["string"] 


//Insert the element at the position
//insert(position, value)
cc.inset(1, 10);
//cc is ["string", 10 , 1, 0] 

//Create a copy of the range of array, starting at and including pos, up to but not including end
//slice(position, ?endPos)
//if endPos is undefinde, sliced to the end
//if endpos is less than 0 will be used ass offset from the end of array
cc.slice(1) //[ 10,1,0 ]
cc.slice(1, 2) //[ 10 ]
cc.slice(1, -1) //[ 10,1 ]


//Removes len elements from array, starting at and including pos, an returns them.
//splice(position, len)
sp = cc.splice(1, 2);
//sp is [ 10,1 ]
//cc is [ "string",0 ]
```
