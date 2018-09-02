mySqr = [x^2 | x <- [1..10]]
-- 1, 4, 9, 16, 25 ...

res1 = [x | x <- mySqr, rem x 2 == 0]
res2 = [(x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50]
res3 = take 5 res2
