import Control.Monad
import Data.List

main = do
    [n, d] <- map read . words <$> getLine :: IO [Int]
    xs <- map read . words <$> getLine
    let ys = do
            (i, x) <- zip [1 .. n] xs
            guard $ all (\(j, y) -> i == j || abs (x - y) >= d) $ zip [1 .. n] xs
            pure i
    print $ length ys
    putStr . unwords $ map show ys
