 -- Exercise:  

-- Exercise: change it to be [1..5] where it says 4 is less than 5, 3 is less than 5 etc... programatically
-- Exercise: Make a function that takes two parameters (lists) and add the first elements of each together, and return that value. Pop the value off the list and do it again until all numbers have
-- Exercise: Make a function that takes two parameters (lists) and add the first elements of each together, and return that value. Pop the value off the list and do it again until all numbers have
-- been added
-- research "Patterns" using @ sign



-- TYPES AND TYPECLASSES--
--length' :: (Num b) => [a] -> b   What is the difference between this
-- sum' :: (Num a) => [a] -> a  -- and this

-- using ghc's :t  followed by something will tell us its type.
-- :t 'a'   returns Char

-- :t "HELLO" yiels [Char]  a list of Characters.

-- Function with a type declaration
-- removeNonUppercase :: [Char] -> [Char]  -- function maps from a string to a string.
-- removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]  -- function accepts parameter 'st'. Set each value of 'st' to c. return c each time when c is run through "c `elem` ['A'..'Z']"
-- [c | ] part means "return c" when the value passes through the requirements.


-- addThree :: Int -> Int -> Int -> Int  -- Parameters are the first three, and the return type is the LAST
-- addThree x y z = x + y + z

-- Int for small numbers. Integer for BIG numbers


--circumference :: Float -> Float
--circumference r = 2 * pi * r

-- :t head   returns  head :: [a] -> a  (It takes a list of whatever the type a is, and returns a single value of that type.)

-- :t fst
-- fst :: (a, b) -> a   -- returns element a

-- :t (==)
-- (==) :: (Eq a) => a -> a -> Bool -- the equality function takes any two values that are of the same type and returns a Bool. The type of those two values must be a member of the Eq class (this was the class constraint).


-- ghci> read "True" || False  
--True  
--ghci> read "8.2" + 3.8  
--12.0  
--ghci> read "5" - 2  
--3  
--ghci> read "[1,2,3,4]" ++ [3]  
--[1,2,3,4,3]  


-- :t read
-- read :: (Read a) => String -> a


-- Most expressions are such  that the compiler

-- :t (*)
-- (*) :: (Num a) => a -> a -> a  (Takes two elements of type a and returns that type)












-----------------------------------------------

--lucky :: (Integral a) => a -> String    ---- Tages a type of a and returns String.
lucky 7 = "LUCKY NUMBER SEVEN!"                 --- pattern matching. When lucky is given 7, return string...
lucky x = "Sorry, you're out of luck, pal!"     --- for everything else return this string





-- Exercise: change it to be [1..5] where it says 4 is less than 5, 3 is less than 5 etc... programatically
sayMe :: (Integral a) => a -> String  -- Takes type a and returns strin.
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5!"   ---least specific must be at bottom




factorial :: (Integral a) => a -> a  --- Take type a and return a
factorial 0 = 1                        -- set 0 = 1 so it doesn't multiply by 0
factorial n = n * factorial (n - 1)    -- n times itself - 1. simple recursion

charName :: Char -> String   -- Take a character and return a string.
charName 'a' = "Albert"        
charName 'b' = "Brosef"
charName 'c' = "Cecil"
charName x = "Huh?"        -- prevents an error



addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  -- Takes tuples and returns a tuple of the same type.
addVectors a b = (fst a + fst b, snd a + snd b)  -- addVector takes two parameters (tuples) a and b. Take the first of a, and the first of b add them together and that's the returned a
-- take second a and second b, add those together and that's the returned b.

addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)    -- With pattern matching


first :: (a, b, c) -> a -- takes types a, b, c in a triple, returns the first type a only.
first (x, _, _) = x  -- grabs the first elem in the triple.

second :: (a, b, c) -> b
second (_, y, _) = y  -- grabs the second elem in a triple

third :: (a, b, c) -> c
third (_, _, z) = z



-- ghci> let xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]  set xs variable
-- ghci> [a+b | (a,b) <- xs]  return value of a+b | Set each values of xs to (a,b) and return a+b
-- [4,7,6,8,11,4] 


head' :: [a] -> a -- takes a list of type a and returns a
head' [] = error "Can't call head on an empty list, dummy!"  -- if head is given an empty list return error message
head' (x:_) = x -- only get first element of list and bind it to x



tell :: (Show a) => [a] -> String -- Take list of type a, return String
tell [] = "The list is empty"  -- The [] at the end means the list is empty at that point on.
tell (x:[]) = "The list has one element: " ++ show x  -- Bind first element of list to x. The rest of the list is empty. This is pattern matching
tell (x:y:[]) = "The list has two elements: " ++ show x ++ show y -- When list has two elements, bind first to x, second to y, the rest is empty.
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y  --- Same thing but the list is not empty after binding first two elements.



length' :: (Num b) => [a] -> b  -- declaration. Take a list of type a and return b
length' [] = 0   -- when an empty array is given, return 0.
length' (_:xs) = 1 + length' xs  -- takes the first element off the list, and adds 1 and calls the function again.

sum' :: (Num a) => [a] -> a  --First: Print get the value of the only value in a list. Trying to get the sum of a list of numbers
sum' [] = 0  -- when sum is given an empty list, return 0.
sum' (x:xs) = x + sum' xs  -- take the head off the list xs. add x to the sum' of the new list.

capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]


---- Guards --- -- Usually lined up. it's a boolean expression. If true, that function body is used
--bmiTell :: (RealFloat a) => a -> String
--bmiTell bmi
--     | bmi <= 18.5 = "You're underweight, you emo, you!"
--     | bmi <= 25.0 = "You're supposedly normal. Pfft, I bet you're ugly!"
--     | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
--     | otherwise   = "You're a whale, congratulations!"


bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
     | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
     | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pfft, I bet you're ugly!"
     | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
     | otherwise   = "You're a whale, congratulations!"


max' :: (Ord a) => a -> a -> a
max' a b
    | a > b = a
    | otherwise = b   --this probably isn't exact. They could be equal?


myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b     = GT
    | a == b    = EQ
    | otherwise = LT


--bmiTell' :: (RealFloat a) => a -> a -> String
--bmiTell' weight height
--    | bmi <= 18.5 = "You're underweight, you emo, you!"  
--    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
--    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
--    | otherwise   = "You're a whale, congratulations!"
--    where bmi = weight / height ^ 2


--bmiTell'' :: (RealFloat a) => a -> a -> String
--bmiTell'' weight height
--    | bmi <= skinny = "You're underweight, you emo, you!"  
--    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
--    | bmi <= fat = "You're fat! Lose some weight, fatty!"  
--    | otherwise   = "You're a whale, congratulations!"
--    where bmi = weight / height ^ 2
--          skinny = 18.5
--          normal = 25.0
--          fat    = 30.0

-- OR
-- where bmi = weight / height ^ 2
      -- (skinny, normal, fat) = (18.5, 25.0, 30.0)

-- initials :: String -> String -> String
-- initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
-- where (f:_) = firstname
--       (l:_) = lastname

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^2
  in  sideArea + 2 * topArea


--[if 5 > 3 then "Woo" else "Boo", if 'a' > 'b' then "Foo" else "Bar"]  
--["Woo", "Bar"]

-- 4 * (if 10 > 5 then 10 else 0) + 2  
-- 42  

-- 4 * (let a = 9 in a + 1) + 2  
--42

-- [let square x = x * x in (square 5, square 3, square 2)]  
-- [(25,9,4)]  


--(let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)  
--(6000000,"Hey there!") 


-- (let (a,b,c) = (1,2,3) in a+b+c) * 100  
--600  

-- calcBmis2 :: (RealFloat a) => [(a, a)] -> [a]
-- calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

--calcBmis3 :: (RealFloat a) => [(a, a)] -> [a]  
--calcBmis3 xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]


--ghci> let zoot x y z = x * y + z  
--ghci> zoot 3 9 2  
--29  
--ghci> let boot x y z = x * y + z in boot 3 4 2  
--14  
--ghci> boot  
-- <interactive>:1:0: Not in scope: `boot'  


--- head' :: [a] -> a
--- head' [] = error "No head for empty lists!"
--- head' (x:_) = x

--- head' :: [a] -> a
--- head' xs = case xs of [] -> error "No head for empty lists!"
---                          (x:_) -> x



--describeList :: [a] -> String  
--describeList xs = "The list is " ++ case xs of [] -> "empty."  
--                                               [x] -> "a singleton list."   
--                                               xs -> "a longer list."


--describeList :: [a] -> String  
--describeList xs = "The list is " ++ what xs  
--    where what [] = "empty."  
--          what [x] = "a singleton list."  
--          what xs = "a longer list."  
