module GreetIfCool2 where


greetIfCool :: String -> IO ()
greetIfCool coolness = if cool coolness
    then putStrLn "eyyyy. What's shakin'?"
    else putStrLn "pssshhh."
  where
    cool :: String -> Bool
    cool s = s == "downright frosty yo"

main :: IO ()
main = do
    greetIfCool "hello"
    greetIfCool "downright frosty yo"
