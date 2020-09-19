// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//       const x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
//   }

function madLib(...args) {

  console.log(`We shall ${args[0].toUpperCase()} the ${args[1].toUpperCase()} ${args[2].toUpperCase()}. `)
}


// madLib('make', 'best', 'guac');
//"We shall MAKE the BEST GUAC."

function isSubstring(str1,str2){

  arr = str1.split(' ');

  let ans;

  arr.forEach(el => {
    debugger
    if (el === str2){
      ans = true   
    }
  });

  if(ans){
    return true;
  }else{
    return false;
  }
}

// function isSubstring(str1,str2){
//   return str1.includes(str2);
// }

// console.log(isSubstring("time to program", "time"))
//true
// console.log(isSubstring('Thats not a meatball', 'Spagheetti'))

// console.log(isSubstring("Jump for joy", "joys"))
//false




function isPrime(num) {
  if(num < 2){ return false; }

  for (let i = 2; i < num ; i++) {
    if(num % i === 0){
      return false;
    }
  }
  return true;
}

// isPrime(2)
// // true

// isPrime(10)
// // false

// isPrime(15485863)
// // true

// isPrime(3548563)
// // false

// fizzBuzz
// 3 and 5 are magic numbers.

// Define a function fizzBuzz(array) 
// that takes an array and returns a new array of every number in the 
// array that is divisible by either 3 or 5, but not both.
function fizzBuzz(arr) {
  let newArr = [];

  arr.forEach( el => {
    if(el % 3 == 0 || el % 5 == 0  && !(el % 3 == 0 && el % 5 == 0)){
      newArr.push(el);
    }
  })

  return newArr;
}




// console.log(fizzBuzz([1,2,3,4,5,6,7,8,9,10]));
// console.log(fizzBuzz([123,42,31,23,456,78,12,31,3,4,2,3,12131,14]));


// sumOfNPrimes
// Using firstNPrimes, write a function sumOfNPrimes(n) 
// that returns the sum of the first n prime numbers. Hint: use isPrime as a helper method.

function sumOfNPrimes1(n){

  let i = 0;
  let sum = 0;
  let prime = 0;

  while(i < n) {
    debugger
    if(isPrime(prime)){
      sum += prime;
      i += 1;
    }
    prime += 1;
  }

  return sum;
}

console.log(sumOfNPrimes(0));
// 0
console.log(sumOfNPrimes(1));
// 2
console.log(sumOfNPrimes(2));

console.log(sumOfNPrimes(4));
// 17