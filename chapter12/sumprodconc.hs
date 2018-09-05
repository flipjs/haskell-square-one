mehSum :: Num a => [a] -> a
mehSum = go 0
    where go :: Num a=> a -> [a] -> a
          go n [] = n
          go n (x:xs) = go (n + x) xs

niceSum :: Num a => [a] -> a
niceSum = foldl (+) 0

mehProduct :: Num a => [a] -> a
mehProduct = go 1
    where go :: Num a=> a -> [a] -> a
          go n [] = n
          go n (x:xs) = go (n * x) xs

niceProduct :: Num a => [a] -> a
niceProduct = foldl (*) 0

mehConcat :: [[a]] -> [a]
mehConcat = go []
    where go :: [a] -> [[a]] -> [a]
          go n [] = n
          go n (x:xs) = go (n ++ x) xs

niceConcat :: [[a]] -> [a]
niceConcat = foldl (++) []
