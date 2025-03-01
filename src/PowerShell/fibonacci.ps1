# recursive fibonacci
function fibonacci_recursive {
    param (
        [int]$n
    )
    if ($n -eq 0) {
        return 0
    } elseif ($n -eq 1) {
        return 1
    }
    return (fibonacci_recursive ($n - 1)) + (fibonacci_recursive ($n - 2))
}

# iterative fibonacci
function fibonacci_iterative {
    param (
        [int]$n
    )
    if ($n -eq 0) {
        return 0
    } elseif ($n -eq 1) {
        return 1
    }

    $a = 0
    $b = 1
    for ($i = 1; $i -lt $n; $i++) {
        $temp = $a + $b
        $a = $b
        $b = $temp
    }
    return $b
}

# fibonacci with memoization
function fibonacci_memoization {
    param (
        [int]$n
    )

    $memo = @{}

    function fibonacci_inner {
        param (
            [int]$n
        )

        if ($n -eq 0) {
            return 0
        } elseif ($n -eq 1) {
            return 1
        }

        if ($memo.ContainsKey($n)) {
            return $memo[$n]
        }

        $result = (fibonacci_inner ($n - 1)) + (fibonacci_inner ($n - 2))
        $memo[$n] = $result
        return $result
    }

    return (fibonacci_inner $n)
}

# demo
$n = 10  # fibonacci of 10 should = 55

Write-Host ("Fibonacci iterative ($n) : " + (fibonacci_iterative $n))
Write-Host ("Fibonacci memoization ($n) : " + (fibonacci_memoization $n))
Write-Host ("Fibonacci recursive ($n) : " + (fibonacci_recursive $n))