export default function fibonacci(n: number, memo: number[] = [0, 1]): number {
    if (n <= 0)
        return 0;

    if (memo[n])
        return memo[n];

    memo[n] = fibonacci(n - 1, memo) + fibonacci(n - 2, memo);
    return memo[n];
}
