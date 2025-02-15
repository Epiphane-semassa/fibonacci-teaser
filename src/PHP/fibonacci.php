<?php

function fibonacciRecursive($n) {
    if ($n <= 0) return 0;
    if ($n == 1) return 1;
    return fibonacciRecursive($n - 1) + fibonacciRecursive($n - 2);
}

function fibonacciIterative($n) {
    if ($n <= 0) return 0;
    if ($n == 1) return 1;
    
    $a = 0;
    $b = 1;
    for ($i = 2; $i <= $n; $i++) {
        $temp = $a + $b;
        $a = $b;
        $b = $temp;
    }
    return $b;
}

$n = 10;
$answerRecursive = fibonacciRecursive($n);
$answerIterative = fibonacciIterative($n);

echo "Fibonacci récursif ($n) : " . $answerRecursive . PHP_EOL;
echo "Fibonacci itératif ($n) : " . $answerIterative;

?>