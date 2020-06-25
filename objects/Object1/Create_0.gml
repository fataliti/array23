var a = new Array();
show_debug_message(a.size)
a.push(1);
a.push(2);
a.push(3);
show_debug_message(a.size)
show_debug_message(a.contains(4));
show_debug_message(a.contains(1));
show_debug_message(a.indexOf(2));
show_debug_message(a.toString());

var b = new Array();
b.push("sasi");
b.push("debil");
show_debug_message(b.toString());


var c = a.concat(b);
show_debug_message(c.toString());

c.foreach(function(el, in) {
	show_debug_message(string(in) +": "+ string(el));
});
	
var d = c.copy();
show_debug_message(d.toString());

var e = c.filter(function(el){
	if is_string(el)
		return true;
	return false
})
show_debug_message(e.toString());


show_debug_message(e.equals(d));
show_debug_message(e.equals(e));

var cc = new Array();
cc.push(2);
cc.push(4);
cc.push(7);
cc.push(7);
cc.push(1);
show_debug_message(cc.toString());
cc.sort(true);
show_debug_message(cc.toString());
cc.resize(3);
show_debug_message(cc.toString());
cc.resize(6);
show_debug_message(cc.toString());
show_debug_message(cc.get(2));
show_debug_message(cc.get(11));

var sh = cc.shift();
show_debug_message([sh, cc.toString()]);
var pp = cc.pop();
show_debug_message([pp, cc.toString()]);
cc.reverse();
show_debug_message(cc.toString());

show_debug_message(cc.join(" haha "))
