# Implementation of Fibonacci sequence in R
# Contains both recursive and iterative methods

# Recursive implementation of Fibonacci sequence
# @param n The position in the sequence (0-based index)
# @return The Fibonacci number at position n
fibonacci_recursive <- function(n) {
    if (n <= 0) return(0)
    if (n == 1) return(1)
    return(fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2))
}


# Iterative implementation of Fibonacci sequence
# @param n The position in the sequence (0-based index)
# @return The Fibonacci number at position n
fibonacci_iterative <- function(n) {
    if (n <= 0) return(0)
    if (n == 1) return(1)
    a <- 0
    b <- 1
    for (i in 2:n) {
        temp <- a + b
        a <- b
        b <- temp
    }
    return(b)
}

# Example usage with n = 10
n <- 10
answer_recursive <- fibonacci_recursive(n)
answer_iterative <- fibonacci_iterative(n)

cat ("Fibonacci number at position", n, "using recursion:", answer_recursive, "\n")
cat ("Fibonacci number at position", n, "using iteration:", answer_iterative, "\n")