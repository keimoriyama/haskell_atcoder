import Control.Monad

main = do
    n <- getLine
    abs <- replicateM n $ map read . words <$> getLine :: IO [[Int]]
    print $ abs
