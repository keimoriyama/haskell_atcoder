import Data.List (foldl')

-- 再帰で直前2文字を見ながら数える
solve :: Int -> String -> Int
solve c (l : m : r : rest)
    | l == 'x' && m == 'x' && r == 'x' = solve (c + 1) (m : r : rest)
    | otherwise = solve c (m : r : rest)
solve c _ = c

-- foldl' で (2文字前, 1文字前, カウント) を状態として持って数える
solveFoldl :: String -> Int
solveFoldl s = cnt
  where
    (_, _, cnt) = foldl' step (' ', ' ', 0) s
    step (a, b, c) x
        | a == 'x' && b == 'x' && x == 'x' = (b, x, c + 1)
        | otherwise = (b, x, c)

-- zip3 で連続3文字を並べて数える
solveZip3 :: String -> Int
solveZip3 s = length [() | (a, b, c) <- zip3 s (drop 1 s) (drop 2 s), a == 'x', b == 'x', c == 'x']

main = do
    n <- getLine
    s <- getLine
    let t = 'x' : s ++ "x"
    print $ solveFoldl t

-- print $ solve 0 t

-- print $ solveZip3 t
