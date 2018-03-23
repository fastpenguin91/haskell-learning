--How to return a number from the factorial function, and get the number of digits
--in that number returned by factorial
factorial :: Integer -> Integer
factorial n = product [1..n]

-- length (show (factorial 52))  -- use parenthesis!

-- "show" turns Integer into string, but 'show factorial 5' doesn't work.

-- Functios dont need type declarations? but it's good practice?

-- "type variable" is a variable of any type a can be Str, Char, etc...

--removeNonUppercase :: [Char] -> [Char]  Takes a list of characters, returns a list of characters
--removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]


removeNonUppercasenew :: [Char] -> [Char]
removeNonUppercasenew st = [ c | c <- st, c `elem` ['A'..'Z']]


removeNonUppercasenewer :: String -> String
removeNonUppercasenewer st = [ c | c <- st, c `elem` ['A'..'Z']]


-- first three are the parameters. last is the return type
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]  -- takes parameter n

circumference :: Float -> Float
circumference r = 2 * pi * r  -- takes parameter r

-- :t head ..... head :: [a] -> a
-- "class constraint"... (Eq a) => a -> a -> Bool
-- (Eq a) is the class constraint.
-- read like this: The equality function takes any two values that are of the same type and returns a Bool

-- fromIntegral :: (Num b, Integral a) => a -> b ---- Return type of Num from Integral
