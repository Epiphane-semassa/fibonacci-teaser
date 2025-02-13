const fibonacciRecursive =(n) =>{
    if (n <= 0) return 0;
    if (n == 1) return 1;
    return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
};
const fibonacciIterative =(n) =>{
    if (n <= 0) return 0;
    if (n == 1) return 1;

    var a = 0, b = 1;
    for (var i = 2; i <= n; i++) {
        var temp = a + b;
        a = b;
        b = temp;
    }
    return b;
};
const n = 10;
var answer1 = fibonacciRecursive(n);
var answer2 = fibonacciIterative(n);

console.log("Fibonacci recursif ("+n+") : " + answer1);
console.log("Fibonacci iteratif ("+n+") :" + answer2);
