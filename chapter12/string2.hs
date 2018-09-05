isThe :: String -> Bool
isThe str = str == "the"

beginsWithVowel :: String -> Bool
beginsWithVowel "" = False
beginsWithVowel (s:str) = elem s "aeiou"

firstHasVowel :: [String] -> Bool
firstHasVowel [] = False
firstHasVowel (x:_) = beginsWithVowel x

getIncrement :: [String] -> Integer
getIncrement (x:xs)
  | isThe x && firstHasVowel xs = 1
  | otherwise = 0

countTheBeforeVowel :: String -> Integer
countTheBeforeVowel "" = 0
countTheBeforeVowel str = addCount $ getIncrement ws
  where
    ws = words str
    addCount n = n + countTheBeforeVowel (unwords $ drop 1 ws)
