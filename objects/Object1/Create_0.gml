#macro trace show_debug_message
var a = new Array();

trace(a.get(2));
trace(a.size());
trace(a.toString());
trace(a.join(" "));
trace(a.contains("Value"));

a.foreach(function(val, ind) {
	trace([val, ind]);
});

a.push("push");
trace(a.shift());
a.push("pop");
trace(a.pop());
trace(a.toString());

a.push(1);
a.push(2);
trace(a.toString());
a.reverse();
trace(a.toString());
trace(a.remove(2));
trace(a.toString());
a.unshift(2);
trace(a.toString());

var b = a.slice(0);
trace(b.join("_b_"));

var d = new Array();
var c = d.splice(0,1);
trace([c.toString(), d.toString()]);
