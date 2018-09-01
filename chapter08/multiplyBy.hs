multiplyBy :: Integral a => a -> a -> a
multiplyBy x 0 = 0
multiplyBy x y = x + multiplyBy x (y - 1)
