ints :: IO [Int]
ints = map read . words <$> getLine

solve a b
    | a + b == 9 = "Nine"
    | a - b == 9 = "Nine"
    | a * b == 9 = "Nine"
    --    | (a `div` b == 9) && (a `mod` b == 0) = "Nine"
    | divMod a b == (9, 0) = "Nine"
    | otherwise = "Nein"

main = do
    [a, b] <- ints
    putStrLn $ solve a b
