data OperatingSystem
    = Linux
    | Mac
    | Windows
    deriving (Eq, Show)

data ProgLang
    = Haskell
    | Agda
    | Idris
    | PureScript
    deriving (Eq, Show)

data Programmer
    = Programmer
        { os :: OperatingSystem
        , lang :: ProgLang }
        deriving (Eq, Show)

allOS :: [OperatingSystem]
allOS = [Linux, Mac, Windows]

allLangs = [Haskell, Agda, Idris, PureScript]

allProgrammers :: [Programmer]
allProgrammers = [ Programmer x y | x <- allOS, y <- allLangs ]

main :: IO ()
main = undefined
