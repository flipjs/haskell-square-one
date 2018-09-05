type Name = String
type Age = Integer
type ValidatePerson a = Either [PersonInvalid] a

data Person = Person Name Age deriving Show

data PersonInvalid
    = NameEmpty
    | AgeTooLow
    deriving (Eq, Show)

mkPerson :: Name -> Age -> ValidatePerson Person
mkPerson name age = mkPerson' (nameOkay name) (ageOkay age)
  where
    mkPerson'
        :: ValidatePerson Name -> ValidatePerson Age -> ValidatePerson Person
    mkPerson' (Right name     ) (Right age      ) = Right (Person name age)
    mkPerson' (Left nameEmpty) (Left ageTooLow) = Left (nameEmpty ++ ageTooLow)
    mkPerson' (Left  nameEmpty) _                 = Left nameEmpty
    mkPerson' _                 (Left ageTooLow)  = Left ageTooLow

    nameOkay :: Name -> ValidatePerson Name
    nameOkay name = if name /= "" then Right name else Left [NameEmpty]

    ageOkay :: Age -> ValidatePerson Age
    ageOkay age = if age > 0 then Right age else Left [AgeTooLow]

main :: IO ()
main = undefined
