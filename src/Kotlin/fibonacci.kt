fun main() {
    // Calculer et afficher les 12 premiers nombres de Fibonacci
    println("Les 12 premiers nombres de Fibonacci sont:")
    Fibonacci.fibonacciSequence(12).also {
        println(it)
    }

    // Calculer le 10ème nombre de Fibonacci
    println("Le 10ème nombre de Fibonacci est:")
    Fibonacci.fibonacci(10).also {
        println(it)
    }

    try {
        println("\nTest avec un nombre négatif pour la séquence:")
        Fibonacci.fibonacciSequence(-5)
    } catch (e: IllegalArgumentException) {
        println("Une erreur s'est produite: ${e.message}")
    }
}

class Fibonacci {
    companion object {
        /**
         * Calculates the nth number in the Fibonacci sequence iteratively.
         * This method is more memory efficient than recursive approach.
         *
         * @param n The position in the sequence (0-based index)
         * @return The nth Fibonacci number
         * @throws IllegalArgumentException if n is negative
         */

        fun fibonacci(n: Int): Long {
            require(n >= 0) { "L'index ne doit pas etre negative" }
            if (n <= 1) return n.toLong()

            var prev = 0L
            var current = 1L

            for (i in 2..n) {
                val next = prev + current

                prev = current
                current = next
            }

            return current
        }

        /**
         * Generates Fibonacci sequence up to n numbers.
         *
         * @param count How many numbers to generate
         * @return List of Fibonacci numbers
         * @throws IllegalArgumentException if count is negative
         */

        fun fibonacciSequence(count: Int): List<Long> {
            require(count >= 0) { "Le nombre doit etre positif" }

            return List(count) { fibonacci(it) }
        }
    }
}