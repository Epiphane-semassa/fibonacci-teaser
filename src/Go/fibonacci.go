package main

import "fmt"

// Recursive Fibonacci function
func fibonacciRecursive(n int) int {
    if n <= 0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    return fibonacciRecursive(n-1) + fibonacciRecursive(n-2)
}

// Iterative Fibonacci function
func fibonacciIterative(n int) int {
    if n <= 0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    a, b := 0, 1
    for i := 1; i < n; i++ {
        temp := a + b
        a = b
        b = temp
    }
    return b
}

func main() {
    n := 10
    fmt.Printf("Fibonacci Recursive (%d): %d\n", n, fibonacciRecursive(n))
    fmt.Printf("Fibonacci Iterative (%d): %d\n", n, fibonacciIterative(n))
}
