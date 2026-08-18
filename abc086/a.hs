ints :: IO [Int]
ints = map read . words <$> getLine

main = do
    [a, b] <- ints
    let result = if odd (a * b) then "Odd" else "Even"
    putStrLn result
