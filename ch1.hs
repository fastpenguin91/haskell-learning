doubleMe x = x + x -- function name followed by parameters. afer = defines what function does.
  -- x is parameter. Takes parameter 'x' and adds x to itself, therefore doubling.

doubleUs x y = doubleMe x + doubleMe y  -- Two parameters, x and y.
-- Run parameter x through doubleMe, Run parameter y through double me. Add those two values together

doubleSmallNumber x = if x > 100   -- parameter x. If x is less than 100
  then x   -- print the parameter value
  else x*2 -- otherwise print parameter's doubled val

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1  -- plus one.

conanO'Brien = "It's a-me, Conan'Obrien!"

-- 'A':" SMALL CAT"  -- puts 'A' at the beginning of a list
-- "Steve Buscemi" !! 6   --returns B

-- [1..20] -- list from 1 to 20
-- [2,4..20] -- 2, 4, 6, 8...

-- take 10 (cycle [1,2,3]) -- 1,2,3,1,2,3,1,2,3,1

-- [x*2 | x <- [1..10]] -- get nums where x is 1..10. double x for each value.

-- [x*2 | x <- [1..10], x*2 >= 12] -- get nums where values are >= 12 and double x.

-- [x | x <- [50..100], x `mod` 7 == 3]  -- set x to each num between 50 and 100.
-- return values of x when x divided by 7 has remainder of 3
-- [52,59,66,73,80,87,94]

-- boomBangs xs [ if x < 10 then "BOOM" else "BANG!" | x <- xs, odd x]
-- xs is the parameter. set each value of list "xs" to x ONLY when x is odd??. if x < 10 print "BOOM"


-- [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]   -- Set x to 10..20. Print numbers when x is not 13, 15, or 19

-- [ x*y | x <- [2,5,10], y <- [8,10,11]]  gets all possible combinations. 2*8, 2*10, 2*11, 5*8 etc...
-- [16,20,22,40,50,55,80,100,110]

-- length' xs = sum [1 | _ <- xs] -- replaces every element of list with 1 and gets the sum
-- takes parameter xs. Accept all values because it is _???? Set each value to 1,and add the sum of all those numbers.


-- removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]


-- let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]  -- Set xxs to a list of lists
-- [ [ x | x <- xs, even x ] | xs <- xxs]   -- Set xs to be each small list in the list of lists...
-- Set x to be each value within xs. if x is even, print x.
-- So... Print all even numbers.



--xs = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16] -- Figure out how to the stuff below works
--xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
-- [ [ x | x <- xs, even x ] | xs <- xxs]


-- zip [1,2,3,4,5] [5,5,5,5,5]

-- zip [1..5] ["one", "two", "three", "four", "five"]

-- let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]

-- let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]


-- let rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

