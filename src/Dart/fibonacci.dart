void main() {
  // Calculer et afficher les 12 premiers nombres de Fibonacci
  print('Les 12 premiers nombres de Fibonacci :');
  var sequence = Fibonacci.fibonacciSequence(12);
  print(sequence);

  // Calculer le 10ème nombre de Fibonacci
  print('\nLe 10ème nombre de Fibonacci :');
  var quinzieme = Fibonacci.fibonacci(10);
  print(quinzieme);

  // Démonstration de la gestion des erreurs
  try {
    print('\nTentative avec un nombre négatif :');
    Fibonacci.fibonacci(-1);
  } catch (e) {
    print('Erreur attrapée : $e');
  }
}

class Fibonacci {
  /// Calcule le nième nombre de la séquence de Fibonacci de manière itérative.
  /// Cette méthode est plus efficace en mémoire que l'approche récursive.
  ///
  /// Paramètres :
  /// n : La position dans la séquence (index basé sur 0)
  /// Renvoie :
  /// Le nième nombre de Fibonacci
  /// Lancements :
  /// ArgumentError si n est négatif
  static int fibonacci(int n) {
    if (n < 0) {
      throw ArgumentError('Un Index négatif n\'est pas requis');
    }

    if (n <= 1) return n;

    int prev = 0;
    int current = 1;

    for (int i = 2; i <= n; i++) {
      int next = prev + current;
      prev = current;
      current = next;
    }
    return current;
  }

  /// Génère une séquence de Fibonacci jusqu'à n nombres.
  ///
  /// Paramètres :
  /// count : combien de nombres générer
  /// Renvoie :
  /// Liste des nombres de Fibonacci
  /// Lancements :
  /// ArgumentError si le nombre est négatif
  static List<int> fibonacciSequence(int count) {
    if (count < 0) {
      throw ArgumentError('Le nombre doit être positif');
    }

    List<int> sequence = [];
    for (int i = 0; i < count; i++) {
      sequence.add(fibonacci(i));
    }
    return sequence;
  }
}