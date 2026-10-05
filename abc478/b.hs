import Control.Monad
import Data.List

ints :: IO [Int]
ints = map read . words <$> getLine

main = do
    [n, v] <- ints
    w <- ints
    let iw = zip [1 ..] w

    print $
        maximum $ do
            (i, wi) <- iw
            (j, wj) <- iw
            (k, wk) <- iw
            guard (i < j && j < k && i + j + k <= v)
            return $ wi + wj + wk
