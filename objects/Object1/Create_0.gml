#macro trace show_debug_message

//Just create a new array
a = new Array();

//Add values in array
a.push("val_1");
a.push("val_2");
a.push("val_3");

//Get a value of the position
trace(a.get(0)) // return "val_1"
//if out of range return undefined

//Size of the array
trace(a.size()) // return 3

//Return index of the first match in array
trace(a.indexOf("val_2")) // return 1

//Return index of the last match in array
trace(a.lastIndexOf("val_2")) // return 1

//String representation of array.
trace(a.toString())

//Return true if value in array or false if not
trace(a.contains("val_1")) //return true
trace(a.contains("val_4")) //return false

//Return a new array by appending the elements of another array
b = new Array();
b.push(1);
c = a.concat(b) //["val_1", "val_2", "val_3", "1"]
trace(c.toString());

//for loop 
a.foreach(function(element, index){
  trace([index, element])
})

//Make a copy of array
aa = a.copy(); 
trace(aa.toString())

//Equals two array
trace(a.equals(aa)) // return true

//Sort values in array
cc = new Array();
cc.push(3)
cc.push(9)
cc.push(1)
trace(cc.toString()) // [3, 9, 1]
//sort(ascend) 
cc.sort(true) 
trace(cc.toString()) // [1, 3, 9]

//Reverse array
cc.reverse() // [9, 3, 1]
trace(cc.toString())

//Resize array
cc.resize(5) // [9, 3, 1, 0, 0]
trace(cc.toString());

//Remove and return first value of array
sh = cc.shift() // [3, 1, 0, 0] 
trace([cc.toString(), sh]);
// sh is = 9, if array is empty return undefined

//Remove and return last value of array
pp = cc.pop() // [3, 1, 0] 
trace([cc.toString(), pp]);
// pp is = 0, if array is empty return undefined

//Returns a string representation of array, with separating between each element.
trace(cc.join(" + ")) // "3 + 1 + 0"


//Removes the first math array
trace(cc.remove(3)) // return true;
trace(cc.toString());
//cc is [1, 0] 


//Add  element at the start of array
cc.unshift("string")
//cc is ["string", 1, 0] 
trace(cc.toString())

//Return a new array containing those elements of the array which returned true
ss = cc.filter(function(value){
  if is_string(value)
    return true
})
//cc is ["string", 1, 0] 
//ss is ["string"] 
trace([cc.toString(), ss.toString()])

//Insert the element at the position
//insert(position, value)
cc.insert(1, 10);
trace(cc.toString());
//cc is ["string", 10 , 1, 0] 

trace(cc.slice(1))
trace(cc.slice(1, 2))
trace(cc.slice(1, -1))

sp = cc.splice(1, 2);
trace([sp, cc]);