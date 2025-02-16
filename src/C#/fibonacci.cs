using System;

class Program
{
    static int FibonacciRecursive(int n)
    {
        if (n <= 0) return 0;
        if (n == 1) return 1;
        return FibonacciRecursive(n - 1) + FibonacciRecursive(n - 2);
    }

    static int FibonacciIterative(int n)
    {
        if (n <= 0) return 0;
        if (n == 1) return 1;
        
        int a = 0, b = 1;
        for (int i = 2; i <= n; i++)
        {
            int temp = a + b;
            a = b;
            b = temp;
        }
        return b;
    }

    static void Main()
    {
        int n = 10;
        int answer1 = FibonacciRecursive(n);
        int answer2 = FibonacciIterative(n);

        Console.WriteLine("Fibonacci recursif (" + n + ") : " + answer1);
        Console.WriteLine("Fibonacci iteratif (" + n + ") : " + answer2);
    }
}
