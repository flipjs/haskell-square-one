class Numberish a where
    fromNumber :: Integer -> a
    toNumber :: a -> Integer

newtype Age =
    Age Integer
    deriving (Eq, Show)

instance Numberish Age where
    fromNumber = Age
    toNumber (Age n) = n

newtype Year =
    Year Integer
    deriving (Eq, Show)

instance Numberish Year where
    fromNumber = Year
    toNumber (Year n) = n

sumNumberish :: Numberish a => a -> a -> a
sumNumberish a a' = fromNumber summed
  where
    integerofA      = toNumber a
    integerOfAPrime = toNumber a'
    summed          = integerofA + integerOfAPrime
