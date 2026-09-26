solve :: String -> String
solve [] = []
solve (x : xs) = (replace x) ++ solve xs

replace x
    | x == 'A' = "A"
    | otherwise = "."

main = do
    s <- getLine
    putStrLn $
        [if x == 'A' then 'A' else '.' | x <- s]
