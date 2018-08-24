module Reverse where


rvrs :: String -> String
rvrs x = x

curr :: String
curr = "Curry is awesome!"

main :: IO ()
main = print $ rvrs curr
