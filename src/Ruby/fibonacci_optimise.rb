n = 10

def fibonacci_recursive(n, memo = {})
  return n if n <= 1
  # Utilisation de ma memoization pour éviter de recalculer des valeurs déjà calculées lors des appels récursifs
  memo[n] ||= fibonacci_recursive(n - 1, memo) + fibonacci_recursive(n - 2, memo)
end

def fibonacci_iterative(n)
  return n if n <= 1
  a, b = 0, 1
  (2..n).each { a, b = b, a + b }
  b
end

puts "Fibonacci Recursive d'ordre #{n} égal à #{fibonacci_recursive(n)}"
puts "Fibonacci Itérative d'ordre #{n} égal à #{fibonacci_iterative(n)}"
