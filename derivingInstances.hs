module DerivingInstances where


data TisAnInteger =
    TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn v) (TisAn v') =
        v == v'

data TwoIntegers =
    Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two v w) (Two v' w') = v == v' && w == w'

data StringOrInt = TisAnInt Int | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt v) (TisAnInt v') = v == v'
    (==) (TisAString v) (TisAString v') = v == v'
    (==) _ _ = False

main :: IO ()
main = do
    if TisAn 1 == TisAn 1 then print "foo" else print "bar"
    if TisAn 2 == TisAn 1 then print "foo" else print "bar"
    if Two 1 2 == Two 1 2 then print "fizz" else print "buzz"
    if Two 1 2 == Two 1 1 then print "fizz" else print "buzz"
