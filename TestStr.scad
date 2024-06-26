include <Str.scad>

assert(str_seq(function (i) i,3,7) == "3456");
assert(str_seq(function (i) i,3,4) == "3");
assert(str_seq(function (i) i,3,3) == "");
assert(str_seq(function (i) i,3,2) == "");

assert(str_list([for (i=[0:9]) i],3,7) == "3456");
assert(str_list([for (i=[0:9]) i],3,4) == "3");
assert(str_list([for (i=[0:9]) i],3,3) == "");
assert(str_list([for (i=[0:9]) i],3,2) == "");

assert(str_list([for (i=[0:9]) i],3) == "3456789");
assert(str_list([for (i=[0:9]) i]) == "0123456789");

sep=function(i) str("<",i,">");
assert(str_join_seq(function (i) i,3,7,sep) == "3<3>4<4>5<5>6");
assert(str_join_seq(function (i) i,3,5,sep) == "3<3>4");
assert(str_join_seq(function (i) i,3,4,sep) == "3");
assert(str_join_seq(function (i) i,3,3,sep) == "");
assert(str_join_seq(function (i) i,3,2,sep) == "");

assert(str_join_seq(function (i) i,3,7,":") == "3:4:5:6");
assert(str_join_seq(function (i) i,3,7) == "3,4,5,6");

assert(str_join_list([for (i=[0:9]) i],3,7,sep) == "3<3>4<4>5<5>6");
assert(str_join_list([for (i=[0:9]) i],3,5,sep) == "3<3>4");
assert(str_join_list([for (i=[0:9]) i],3,4,sep) == "3");
assert(str_join_list([for (i=[0:9]) i],3,3,sep) == "");
assert(str_join_list([for (i=[0:9]) i],3,2,sep) == "");

assert(str_join_list([for (i=[0:9]) i],3,7,":") == "3:4:5:6");
assert(str_join_list([for (i=[0:9]) i],3,7) == "3,4,5,6");
assert(str_join_list([for (i=[0:9]) i],3) == "3,4,5,6,7,8,9");
assert(str_join_list([for (i=[0:9]) i]) == "0,1,2,3,4,5,6,7,8,9");

echo("ok");