myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter pred (x : xs)
  | pred x    = x : myFilter pred xs
  | otherwise = myFilter pred xs
