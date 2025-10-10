-- Je définis ici la variable n pour choisir jusqu'à quel rang je veux calculer la suite de Fibonacci
local n = 10

-- Voici ma version récursive de la fonction Fibonacci.
-- Elle utilise l'appel de la fonction à elle-même pour calculer les termes.
function fibonacciRecursive(n)
    -- Si n est 0, je retourne 0 directement
    if n <= 0 then
        return 0
    -- Si n est 1, je retourne 1 (car c’est le deuxième terme de la suite)
    elseif n == 1 then
        return 1
    else
        -- Sinon, je retourne la somme des deux termes précédents
        return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2)
    end
end

-- Ici, j’ai fait une version itérative de Fibonacci.
-- Elle est plus rapide que la récursive, surtout pour les grands nombres.
function fibonacciIterative(n)
    -- Je gère les cas simples : 0 et 1
    if n <= 0 then
        return 0
    elseif n == 1 then
        return 1
    end

    -- Je commence avec les deux premiers termes : 0 et 1
    local a, b = 0, 1

    -- Je boucle de 2 jusqu’à n pour construire les termes petit à petit
    for i = 2, n do
        local temp = a + b  -- Je calcule le prochain terme
        a = b               -- Je fais avancer mes variables
        b = temp
    end

    -- À la fin, je retourne le terme calculé
    return b
end

-- J'affiche ici le résultat de la version récursive
print("Fibonacci recursive (" .. n .. ") : " .. fibonacciRecursive(n))

-- Et là, le résultat avec la version itérative
print("Fibonacci iterative (" .. n .. ") : " .. fibonacciIterative(n))
