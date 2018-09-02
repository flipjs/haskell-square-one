add x y = x + y
minus x y = x - y
times x y = x * y
myAnd a b = a && b

res1 = foldl add 5 [1, 2, 3, 4]
res2 = foldl myAnd True [True, False, True, True]
res3 = foldl times 5 [1, 2, 3, 4]
res4 = foldl minus 0 [4, 3, 2, 1]
res5 = foldl minus 0 [1, 2, 3, 4]
