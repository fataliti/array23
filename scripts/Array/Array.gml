// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Array() constructor{
	ds =  [];
	
	/// @function size()
	size = function() {
		return array_length(ds);	
	}
	
	/// @function push(value)
	push = function(value) {
		ds[array_length(ds)] = value;
	};
	
	/// @function indexOf(value)
	indexOf = function(value) {
		for (var p = 0; p < array_length(ds); p++) {
			if ds[p] == value {
				return p
			}
		}
		return -1;
	};
	
	/// @function toString()
	toString = function() {
		return string(ds);	
	};
	
	/// @function contains(value)
	contains = function(value) {
		for (var p = 0; p < array_length(ds); p++) {
			if ds[p] == value {
				return true;
			}
		}	
		return false;
	};
	
	/// @function concat(Array)
	concat = function(arr) {
		var newArr = new Array();
		array_copy(newArr.ds, 0, ds, 0, size());
		array_copy(newArr.ds, newArr.size(), arr.ds, 0, arr.size());
		return newArr;
	};
	
	/// @function get(index)
	get = function(index) {
		if index >= 0 && index < size() 
			return ds[index];
		else 
			return undefined;
	};
	
	/// @function foreach(cb(element, index))
	foreach = function(cb) {
		for(var i = 0; i < size(); i++) {
			if cb(ds[i], i) == true
				break;
		}
	}
	
	/// @function copy()
	copy = function() {
		var newArr = new Array();
		array_copy(newArr.ds, 0, ds, 0, array_length(ds));
		return newArr;
	}
	
	/// @function filter(cb(element)) 
	filter = function(cb){
		var newArr = new Array();
		for(var i = 0; i < array_length(ds); i++){
			if cb(ds[i]) == true {
				newArr.push(ds[i]);	
			}
		}
		return newArr;
	}
	
	/// @function equals(array) 
	equals = function(array) {
		return array_equals(ds, array.ds);	
	}
	
	/// @function resize(newSize) 
	resize = function(newSize) {
		array_resize(ds, newSize);	
	}
	
	/// @function sort(ascend) 
	sort = function(ascend) {
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
	shift = function() {
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
	pop = function() {
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
	reverse = function() {
		if size() < 2
			return;
		
		var _arr = [];
		var j = 0
		for (var i = size()-1; i>= 0; i--) {
			_arr[j] = ds[i];
			j++;
		}
		ds = _arr;
	} 
	
	/// @function sep() 
	join = function(sep){
		var jString = "";
		for (var i = 0; i < size(); i++) {
			jString += string(ds[i]);
			if i != size()-1
				jString += sep;
		}
		return jString;
	}
	
}