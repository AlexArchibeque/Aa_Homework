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
  if(num < 2){
    console.log(false);
    return false;
  }

  for (let i=2; i < num ; i++) {
    if(num % i === 0){
      console.log(false);
      return false;
    }
  }
  console.log(true);
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