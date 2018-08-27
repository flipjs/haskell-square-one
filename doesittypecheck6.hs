chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = f x == y
