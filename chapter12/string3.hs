import Data.Char (toLower)

isVowel :: Char -> Bool
isVowel c = toLower c `elem` "aeiou"

incWhen :: Bool -> Integer -> Integer
incWhen b n = if b then n + 1 else n

countVowels :: String -> Integer
countVowels = foldr (\a b -> incWhen (isVowel a) b) 0
