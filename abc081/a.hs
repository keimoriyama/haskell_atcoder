main = do
    s <- getLine
    let l = filter (== '1') s
    print $ length l
