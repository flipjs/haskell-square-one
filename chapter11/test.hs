data TestVar a
    = TestOne a
    | TestTwo a
    deriving (Eq, Show)

data TestVar'
    = TestOne' Int
    | TestTwo' Int
    | TestThree' String
    deriving (Eq, Show)

testfunc :: TestVar Int -> TestVar Int
testfunc (TestOne 1) = TestTwo 1
testfunc (TestOne _) = TestTwo 2

testfunc' :: TestVar String -> TestVar String
testfunc' (TestOne "foo") = TestTwo "bar"
testfunc' (TestOne x) = TestTwo x

main :: IO ()
main = undefined
