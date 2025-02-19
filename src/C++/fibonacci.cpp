#include <iostream>
#include <cstdint>

// Function prototypes
int fibonacciRecursive(int n);
int fibonacciIterative(int n);

int main() {
    int n = 10;
    int answer1 = fibonacciRecursive(n);
    int answer2 = fibonacciIterative(n);

    std::cout << "Fibonacci recursif (" << n << ") : " << answer1 << std::endl;
    std::cout << "Fibonacci iteratif (" << n << ") : " << answer2 << std::endl;

    return 0;
}

// Recursive Fibonacci function
int fibonacciRecursive(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;
    return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
}

// Iterative Fibonacci function
int fibonacciIterative(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;

    int a = 0, b = 1;
    for (int i = 2; i <= n; i++) {
        int temp = a + b;
        a = b;
        b = temp;
    }
    return b;
}