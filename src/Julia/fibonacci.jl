
function fibonacciRecursive(n::Int) 
    if n <= 0
        return 0 
    end
    if n == 1
        return 1
    end
    return fibonacciRecursive(n-1) + fibonacciRecursive(n-2)
end


function fibonacciIterative(n::Int) 
    if n <= 0
        return 0
    end
    if n == 1
        return 1
    end
    
    a,b = 0, 1
    for i in 2:n
        a, b = b, a + b 
    end
    return b;
end

println("Fibonacci Recursive (10): ", fibonacciRecursive(10))
println("Fibonacci Iterative (10): ", fibonacciIterative(10))
