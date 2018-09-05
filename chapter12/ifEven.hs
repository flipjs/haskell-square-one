ifEven :: Integer -> Maybe Integer
ifEven n = if even n then Just (n + 2) else Nothing
