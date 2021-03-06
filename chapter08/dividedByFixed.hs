data DividedByResult = Result Integer | DividedByZero deriving Show

dividedBy :: Integer -> Integer -> (DividedByResult, Integer)
dividedBy num denom = go num denom 0
  where
    go n d count
        | d == 0
        = (DividedByZero, 0)
        | n < 0
        = go (negate n) d count
        | d < 0
        = go n (negate d) count
        | n < d
        = ( Result
              ( count
              * (if num < 0 then (-1) else 1)
              * (if denom < 0 then (-1) else 1)
              )
          , n
          )
        | otherwise
        = go (n - d) d (count + 1)
