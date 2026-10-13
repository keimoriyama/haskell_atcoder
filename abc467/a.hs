ints :: IO [Int]
ints = map read . words <$> getLine

-- BMI = w / (h/100)^2 >= 25  <=>  10000 * w >= 25 * h^2  <=>  400 * w >= h^2
solve :: Int -> Int -> String
solve h w
    | 400 * w >= h * h = "Yes"
    | otherwise = "No"

main = do
    [h, w] <- ints
    putStrLn $ solve h w
