data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

s1 = Rocks "foo"
s2 = Yeah True
s3 = Papu (Rocks "fizz") (Yeah True)
