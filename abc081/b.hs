ints :: IO [Int]
ints = map read . words <$> getLine

main = do
    n <- getLine
    a <- ints
    print a
