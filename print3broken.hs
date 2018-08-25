module Print3Broken where


printSecond :: IO ()
printSecond =
  -- next line will fail - greeting not in scope
    putStrLn greeting

main :: IO ()
main = do
    putStrLn greeting
    printSecond
    where greeting = "Yarrrr"
