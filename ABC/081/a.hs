main :: IO ()
main = do
    s <- getLine
    let ones = filter (== '1') s
    print $ length ones
