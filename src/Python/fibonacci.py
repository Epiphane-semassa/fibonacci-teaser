# J'implemente le code comme le code Java une recursive et une iterative
n = 10
def fibonacciRecursive(n):
    if ( n<=0 ): return 0
    if ( n ==1 ): return 1
    return fibonacciRecursive(n-1) + fibonacciRecursive(n -2 )
def fibonacciIterative(n):
        if (n <= 0): return 0
        if (n == 1): return 1

        a, b= 0, 1
        for i in range(1,n):
            temp = a + b
            a = b
            b = temp
        return b
print("Fibonacci recursif (" + str(n) + ") : " + str(fibonacciRecursive(n)))
print("Fibonacci iterative (" + str(n) + ") : " + str(fibonacciIterative(n)))
