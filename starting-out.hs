
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
-- boomBangs [2,4..100] returns empty list bbecause all are even.
-- take list. If x less than 10 print BOOM, otherwise print BANG. Only do this for ODD numbers.

addOne xs = [ x + 1 | x <- xs]

anotherLength xs = sum [ 1 | _ <- xs]

-- [ x | x <- ['a', 'A', 'b', 'B', 'c', 'C'], x `elem` ['A'..'Z']]
-- Returns elements of the list only if they are capital letters






-- [x*2 | x <- [1..10]] -- Set every value from 1-10 to x, return x*2

--[x*2 | x <- [1..10], x*2 >= 12] -- Same as above only return values where x*2 greater than 12.

-- [ x | x <- [50..100], x `mod` 7 == 3] -- Set x to numbers 50-100, return value when x divided by 7 gives a remainder of 3.



-- [ x | x <- [10..20], x /= 13, x /= 15, x /= 19] -- set x for 10-20, return x when not 13, 15, or 19


-- [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]


removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
-- take string st as parameter. return 'c', but set c to each element of the string/list.
-- if c is in ['A'..'Z'], then return c


-- addOne xs = [ x + 1 | x <- xs]

-- ghci> let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]  
-- ghci> [ [ x | x <- xs, even x ] | xs <- xxs]
-- return x. Set x to each value of xs, return if x is even. set xs to each value of xss.

-- let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
-- set triangles = to a 3 value tuple. Set c to 1-10, b to 1-10, and a to 1-10.
-- Loop through every possible iteration....

-- let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
-- set c to 1-10. set b to 1-c.. making sure that b is never larger than c.
-- set a to 1-b, making sure that a is never larger than b.
-- return value when a^2 + b^2 == c^2 AND a+b+c == 24


