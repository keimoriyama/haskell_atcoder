ints :: IO [Int]
ints = map read . words <$> getLine

main = do
    _ <- getLine
    a <- ints
    print $ length [0 | (a, b, c) <- zip3 a (drop 1 a) (drop 2 a), a < b, b > c]
