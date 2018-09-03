-- data Fiction = Fiction deriving Show
-- data NonFiction = NonFiction deriving Show

-- data BookType
--     = FictionBook Fiction
--     | NonFictionBook NonFiction
--     deriving Show

type AuthorName = String

data Author
    = Fiction AuthorName
    | NonFiction AuthorName
    deriving (Eq, Show)

main :: IO ()
main = undefined
