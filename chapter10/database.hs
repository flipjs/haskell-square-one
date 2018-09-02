import Data.Time


data DatabaseItem
    = DbString String
    | DbNumber Integer
    | DbDate UTCTime
    deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
    [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbNumber 12001
    , DbString "Foobar"
    , DbDate (UTCTime (fromGregorian 1935 5 1) (secondsToDiffTime 34123))
    ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr f []
  where
    f (DbDate a) b = a : b
    f _          b = b

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr f []
  where
    f (DbNumber a) b = a : b
    f _            b = b

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = f . filterDbDate
  where
    f (x:xs) = foldr (\a b -> if a > b then a else b) x xs

sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber
-- sumDb = f . filterDbNumber
--     where f = foldr (+) 0

avgDb :: [DatabaseItem] -> Double
avgDb = f . filterDbNumber
    where f xs = foldr (\a b -> fromIntegral a / b) (fromIntegral (length xs)) xs
