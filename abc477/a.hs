solve :: String -> String
solve c
    | c == "B" = "Y"
    | c == "Y" = "R"
    | otherwise = "B"

main = do
    c <- getLine
    putStrLn $ solve c
