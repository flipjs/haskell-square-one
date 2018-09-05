myIterate :: (a -> a) -> a -> [a]
myIterate f v = [v] ++ (myIterate f (f v))
