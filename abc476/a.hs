solve :: String -> String
solve x =
    if last x == 'e'
        then x ++ "r"
        else x ++ "er"

main = do
    s <- getLine
    putStrLn $ solve s
