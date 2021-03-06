newtype Price
    = Price Integer
    deriving (Eq, Show)

newtype Size
    = Size Integer
    deriving (Eq, Show)

data Manufacturer
    = Mini
    | Mazda
    | Tata
    deriving (Eq, Show)

data Airline
    = PapuAir
    | CatapultsRUs
    | TakeYourChancesUnited
    deriving (Eq, Show)

data Vehicle
    = Car Manufacturer Price
    | Plane Airline Size
    deriving (Eq, Show)

myCar = Car Mini $ Price 14000
urCar = Car Mazda $ Price 20000
clownCar = Car Tata $ Price 7000
doge = Plane PapuAir $ Size 10

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _         = False

isPlane :: Vehicle -> Bool
isPlane (Plane _ _) = True
isPlane _         = False

areCars :: [Vehicle] -> Bool
-- areCars = all isCar
areCars = foldr (\a b -> isCar a && b) True

getManu :: Vehicle -> Manufacturer
getManu (Car manu _) = manu

main :: IO ()
main = undefined
