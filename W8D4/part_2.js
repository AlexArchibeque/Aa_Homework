function titleize(names, cb){
    let arr = names.map(el =>`Mx. ${el} Jingleheimer Schmidt`);
    cb(arr);
}

function printCallback(arr) {
    arr.forEach(el => {
        console.log(el)
    })
}

titleize(["Mary", "Brian", "Leo"], printCallback);
// Mx. Mary Jingleheimer Schmidt
// Mx. Brian Jingleheimer Schmidt
// Mx. Leo Jingleheimer Schmidt
// undefined