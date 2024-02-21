"use strict";

let array1 = [1, 2, 3, 4, 5];
let array2 = [1, 3, 4, 2, 5];

let js1 = jortSort(array1);
console.log(array1);
console.log(js1);
let js2 = jortSort(array2);
console.log(array2);
console.log(js2);

function jortSort(array) {
  // sort the array
  var originalArray = array.slice(0);
  array.sort(function (a, b) {
    return a - b;
  });

  // compare to see if it was originally sorted
  for (var i = 0; i < originalArray.length; ++i) {
    if (originalArray[i] !== array[i]) return false;
  }

  return true;
}
