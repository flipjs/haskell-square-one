import Data.Char (toUpper)


capitalize :: String -> String
capitalize (x:xs) = toUpper x : xs
