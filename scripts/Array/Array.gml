// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Array() constructor{
	ds =  [];
	
	/// @function size()
	static size = function() {
		return array_length(ds);	
	}
	
	/// @function push(value)
	static push = function(value) {
		ds[array_length(ds)] = value;
	};
	
	/// @function indexOf(value)
	static indexOf = function(value) {
		for (var p = 0; p < array_length(ds); p++) {
			if ds[p] == value {
				return p;
			}
		}
		return -1;
	};
	
	/// @function toString()
	static toString = function() {
		return string(ds);	
	};
	
	/// @function contains(value)
	static contains = function(value) {
		for (var p = 0; p < array_length(ds); p++) {
			if ds[p] == value {
				return true;
			}
		}	
		return false;
	};
	
	/// @function concat(Array)
	static concat = function(arr) {
		var newArr = new Array();
		array_copy(newArr.ds, 0, ds, 0, size());
		array_copy(newArr.ds, newArr.size(), arr.ds, 0, arr.size());
		return newArr;
	};
	
	/// @function get(index)
	static get = function(index) {
		if index >= 0 && index < size() 
			return ds[index];
		else 
			return undefined;
	};
	
	/// @function foreach(cb(element, index))
	static foreach = function(cb) {
		for(var i = 0; i < size(); i++) {
			if cb(ds[i], i) == true
				break;
		}
	}
	
	/// @function copy()
	static copy = function() {
		var newArr = new Array();
		array_copy(newArr.ds, 0, ds, 0, array_length(ds));
		return newArr;
	}
	
	/// @function filter(cb(element)) 
	static filter = function(cb){
		var newArr = new Array();
		for(var i = 0; i < array_length(ds); i++){
			if cb(ds[i]) == true {
				newArr.push(ds[i]);	
			}
		}
		return newArr;
	}
	
	/// @function equals(Array) 
	static equals = function(array) {
		return array_equals(ds, array.ds);	
	}
	
	/// @function resize(newSize) 
	static resize = function(newSize) {
		array_resize(ds, newSize);	
	}
	
	/// @function sort(ascend) 
	static sort = function(ascend) {
		var _list = ds_list_create();
		var _arr = [];
		var s = size();
		for (var i = 0; i < s; i++) {
			ds_list_add(_list, ds[i]);
		}
		ds_list_sort(_list, ascend);
		for(i = 0; i < s; i++) {
			_arr[i] = _list[| i];
		}
		ds_list_destroy(_list);
		ds = _arr;
	}
	
	/// @function shift() 
	static shift = function() {
		if size() == 0
			return undefined;
		var ret = ds[0];
		var _arr = [];
		for(var i = 1; i < size(); i++) {
			_arr[i-1] = ds[i];	
		}
		ds = _arr;
		return ret;
	}
	
	/// @function pop() 
	static pop = function() {
		if size() == 0
			return undefined;
		var ret = ds[size()-1];
		var _arr = [];
		for(var i = 0; i < size(); i++) {
			if i == size()-1
				break;
			
			_arr[i] = ds[i];	
		}
		ds = _arr;
		return ret;
	}
	
	/// @function reverse() 
	static reverse = function() {
		if size() < 2
			return;
		
		var _arr = [];
		var j = 0;
		for (var i = size()-1; i>= 0; i--) {
			_arr[j] = ds[i];
			j++;
		}
		ds = _arr;
	} 
	
	/// @function join(sep) 
	static join = function(sep){
		var jString = "";
		for (var i = 0; i < size(); i++) {
			jString += string(ds[i]);
			if i != size()-1
				jString += sep;
		}
		return jString;
	}
	
	/// @function remove(value) 
	static remove = function(value){
		var removed = false;
		var index = indexOf(value);
		if index >= 0 {
			var _arr = [];
			array_copy(_arr, 0, ds, 0, index);
			array_copy(_arr, array_length(_arr), ds, index+1, size()-index);
			ds = _arr;
			removed = true;
		}
		return removed;
	}
	
	/// @function unshift(value) 
	static unshift = function(value) {
		var _ds = [];
		_ds[0] = value;
		array_copy(_ds,1,ds,0,size());
		ds = _ds;
	}
	
	/// @function insert(position, value)
	static insert = function(position, value) {
		var _arr = [];
		array_copy(_arr, 0, ds, 0, position);
		_arr[array_length(_arr)] = value;
		array_copy(_arr, position+1, ds, position, size()-position);
		ds = _arr;
	}
	
	/// @function slice(position, ?endPos)
	static slice = function(position, endPos) {
		if endPos == undefined 
			endPos = size();
		else if endPos < 0
			endPos = size() + endPos;
		
		var newArr = new Array();
		var _arr = [];
		array_copy(_arr, 0, ds, position, endPos - position);
		newArr.ds = _arr;
		return newArr;
	}
	
	/// @function splice(position, len)
	static splice = function(position, len) {
		var newArr = new Array();
		var _arr = [];
		array_copy(_arr, 0, ds, position, len);
		newArr.ds = _arr;
		
		var _ds = [];
		array_copy(_ds, 0, ds, 0, position);
		array_copy(_ds,array_length(_ds), ds, position+len, size()-position+len);
		ds = _ds;
		
		return newArr;
	}
	
	/// @function lastIndexOf(value)
	static lastIndexOf = function(value) {
		for (var i = size()-1; i >= 0; i--) {
			if ds[i] == value {
				return i;
			}
		}
		return -1;
	}
	
	/// @function clear()
	static clear = function() {
		ds = [];
	}
	
}