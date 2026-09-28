putFizz n
    | n `mod` 3 == 0 = "Fizz"
    | otherwise = show n

main = do
    -- n <- read <$> getLine
    -- let res = map putFizz [1 .. n]
    -- putStrLn $ unlines res
    n <- readLn :: IO Int
    mapM_ (\x -> if x `mod` 3 == 0 then putStrLn "Fizz" else putStrLn $ show x) [1 .. n]
