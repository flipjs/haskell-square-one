import Data.List (intercalate)

{- notThe :: String -> Maybe String-}
{- notThe str-}
{-   | str == "the" = Just str-}
{-   | otherwise = Nothing-}

{- replaceThe :: String -> String-}
{- replaceThe str = unwords (doReplace str)-}
{-   where doReplace xs = map (\x -> if notThe x == Nothing then x else "a") (words xs)-}

notThe :: String -> Maybe String
notThe str
  | str == "the" = Nothing
  | otherwise = Just str

replaceThe :: String -> String
{- replaceThe str = (unwords . map aThe . map notThe) $ words str-}
replaceThe str = ((intercalate " ") . map aThe . map notThe) $ words str
  where
    -- deconstruct the Maybe to get at the values
    aThe :: Maybe String -> String
    aThe (Just x) = x
    aThe _ = "a"
