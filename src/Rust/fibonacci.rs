fn fibonacci_recursive(n: u32) -> u32 {
    if n == 0 {
        return 0;
    } else if n == 1 {
        return 1;
    } else {
        return fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2);
    }
}

fn fibonacci_iterative(n: u32) -> u32 {
    if n == 0 {
        return 0;
    } else if n == 1 {
        return 1;
    }

    let mut a = 0;
    let mut b = 1;
    for _ in 2..n {
        let temp = a + b;
        a = b;
        b = temp;
    }
    b
}

fn main(){
    let n = 10;
    let answer1 = fibonacci_recursive(n);
    let answer2 = fibonacci_iterative(n);

    println!("Fibonacci récursif ({}) : {}", n, answer1);
    println!("Fibonacci itératif ({}) : {}", n, answer2);
}