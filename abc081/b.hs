ints :: IO [Int]
ints = map read . words <$> getLine

solve
    list
    n =
        if any odd list
            then n
            else solve (map (`div` 2) list) (n + 1)

main = do
    n <- getLine
    a <- ints
    let result = solve a 0
    print result

-- print $
--     map (`div` 2) a
