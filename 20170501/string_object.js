var str1 = "Hello";
var str2 = " World";
var str3 = "!!";

console.log(str1.length);
console.log(str1["length"]);

var str4 = str1.concat(str2);
console.log(str4);

console.log(str1.concat(str2).concat(str3));
console.log(str1 + str2 + str3);

console.log(str1.charAt(1));
console.log(str1.substring(1, 4));
