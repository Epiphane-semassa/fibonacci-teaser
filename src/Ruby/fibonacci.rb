n = 10

def fibonacciRecursive(n)
  if n <= 0
    return 0
  elsif n == 1
    return 1
  else
    return fibonacciRecursive(n-1) + fibonacciRecursive(n - 2)
  end
end

def fibonacciIterative(n)
  if n <= 0
    return 0
  elsif n == 1
    return 1
  else
    a, b = 0, 1
    for _ in 2..n do
      a, b = b, a + b
    end
    return b
  end
end

puts "Fibonacci Recursive d'ordre #{n} égal à #{fibonacciRecursive(n)}"
puts "Fibonacci Itérative d'ordre #{n} égal à #{fibonacciRecursive(n)}"
