#[allow(dead_code)]
fn fibonacci_recursive(n: u64) -> u64 {
    if n == 0 {
        return 0;
    } else if n == 1 {
        return 1;
    }
    
    return fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2);
}

#[allow(dead_code)]
fn fibonacci_iterative(n: u64) -> u64 {
    if n == 0 {
        return 0;
    } else if n == 1 {
        return 1;
    }
    
    let mut a = 0;
    let mut b = 1;
    for _ in 1..n {
        let temp = a + b;
        a = b;
        b = temp;
    }
    return b;
}

#[allow(dead_code)]
fn fibonacci_memoization(n: u64) -> u64 {
    fn fibonacci(n: u64, memo: &mut std::collections::HashMap<u64, u64>) -> u64 {
        if n == 0 {
            return 0;
        } else if n == 1 {
            return 1;
        }
        
        if let Some(&value) = memo.get(&n) {
            return value;
        }

        let result = fibonacci(n - 1, memo) + fibonacci(n - 2, memo);
        memo.insert(n, result);
        return result;
    }
    
    let mut memo = std::collections::HashMap::new();
    fibonacci(n, &mut memo)
}

fn main() {
    let n = 10; // max is 93 for usize or u64. But if you want more challenge, check this approache https://stackoverflow.com/a/67137898/13158370
    
    println!("Fibonacci iterative ({}) : {}", n, fibonacci_iterative(n));

    println!("Fibonacci memoization ({}) : {}", n, fibonacci_memoization(n));
    
    println!("Fibonacci recursive ({}) : {}", n, fibonacci_recursive(n));
}
