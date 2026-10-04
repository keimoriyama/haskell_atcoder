main = do
    [n, m] <- map read . words <$> getLine
    let (d, e) = divMod m n
    let ans = replicate e (d + 1) ++ replicate (n - e) d
    putStrLn $ unlines $ map show $ ans
