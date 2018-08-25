greetIfCool :: String -> IO ()
greetIfCool coolness = if cool
    then putStrLn "eyyyy. What's shakin'?"
    else putStrLn "pssshhh."
    where cool = coolness == "downright frosty yo"

main :: IO ()
main = do
    greetIfCool "hello"
    greetIfCool "downright frosty yo"
