main = do
    [n, d] <- map read . words <$> getLine :: IO [Int]
    x <- readLn :: IO Int

    print x
