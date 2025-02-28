main :: IO ()
main = print $ fibonacci 10

fibonacci :: Int -> Int
fibonacci 1 = 0
fibonacci 2 = 1
fibonacci n = fibonacci (n - 2) + fibonacci (n - 1)