module GreetIfCool3 where


greetIfCool :: String -> IO ()
greetIfCool coolness = case cool of
    True  -> putStrLn "eyyyy. What's shakin'?"
    False -> putStrLn "pssshhh."
    where cool = coolness == "downright frosty yo"

main :: IO ()
main = do
    greetIfCool "hello"
    greetIfCool "downright frosty yo"
