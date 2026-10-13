ints :: IO [Int]
ints = map read . words <$> getLine

main = do
    n <- getLine
    as <- ints
    print $ sum [ai | (i, ai) <- zip [1 ..] as, i `mod` 2 == 1]
