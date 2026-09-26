solve x
    | length x == 1 = x
solve (x : xs) = x : 'o' : (solve xs)

main = do
    s <- getLine
    let result = solve s
    putStrLn result
