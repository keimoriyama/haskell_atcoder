ints :: IO [Int]
ints = map read . words <$> getLine

main = do
    [n, k] <- ints
    print $ [1 .. n] !! (n - k)
