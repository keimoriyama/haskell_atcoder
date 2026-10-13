import Data.List

main = do
    n <- getLine
    s <- getLine
    let g = filter (elem 'R') $ group s
    if g == [] then print 0 else print $ maximum $ map length g
