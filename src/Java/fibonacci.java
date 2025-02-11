/**
 * Programme qui calcule la suite de Fibonacci en Java.
 *
 * Implémentation avec une méthode récursive et une méthode itérative.
 */
public class Fibonacci {

    /**
     * Calcule le n-ième terme de la suite de Fibonacci en utilisant la récursion.
     * Attention : Cette méthode est inefficace pour de grandes valeurs de n à cause des appels récursifs redondants.
     *
     * @param n La position du terme dans la suite.
     * @return La valeur du n-ième terme de Fibonacci.
     */
    public static int fibonacciRecursive(int n) {
        if (n <= 0) return 0;
        if (n == 1) return 1;
        return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
    }

    /**
     * Calcule le n-ième terme de la suite de Fibonacci en utilisant une approche itérative.
     * Cette méthode est plus efficace en termes de complexité (O(n)).
     *
     * @param n La position du terme dans la suite.
     * @return La valeur du n-ième terme de Fibonacci.
     */
    public static int fibonacciIterative(int n) {
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

    /**
     * Méthode principale permettant de tester les implémentations de Fibonacci.
     */
    public static void main(String[] args) {
        int n = 10; // Nombre de termes à calculer

        System.out.println("Fibonacci recursif (" + n + ") : " + fibonacciRecursive(n));
        System.out.println("Fibonacci iteratif (" + n + ") : " + fibonacciIterative(n));
    }
}
