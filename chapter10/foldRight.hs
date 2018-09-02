add x y = x + y
minus x y = x - y
times x y = x * y
myAnd a b = a && b

res1 = foldr add 5 [1, 2, 3, 4]
res2 = foldr myAnd True [True, False, True, True]
res3 = foldr times 5 [1, 2, 3, 4]
res4 = foldr minus 0 [4, 3, 2, 1]
res5 = foldr minus 0 [1, 2, 3, 4]
