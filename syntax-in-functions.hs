-- Want to get the MIDDLE element of a list.
middles :: [a] -> a
middles [] = error "Cant use empty list"
middles [x] = x
middles (_:xs) = lasts xs


-- How do I use this for list comprehension? Return a list of strings. "This is 1, this is 2, no match!"
lucky2 :: (Integral a) => a -> String
lucky2 7 = "Lucky NUMBER SEVEN"
lucky2 x = "Sorry, out of luck!"


--lucky3 :: [a] -> String
--lucky3 "Bob" = "Lucky NUMBER SEVEN"
--lucky3 x = "Sorry, out of luck!"


--- Would like to add 1 to each element. Instead of returning the first element,
-- return every element with 1 added to it.
--head' :: [a] -> a
--head' [] = error "Can't call on empty list"
--head' (x:_) = x + 1

-- Want to return "Fizz" for each letter.
length' :: (Num b) => [a] -> b -- return type of b which is a Num. Take a list of type a
length' [] = 0
length' (_:xs) = 1 + length' xs -- remove head and add 1


-----------------------------------------------------------------
-----------------------------------------------------------------
-----------------------------------------------------------------
-----------------------------------------------------------------
-----------------------------------------------------------------


lucky :: (Integral a) => a -> String
lucky 7 = "Lucky NUMBER SEVEN"
lucky x = "Sorry, out of luck!"



sayMe :: (Integral a) => a -> String  
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"  
sayMe x = "Not between 1 and 5"  


factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1) 

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors2 :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors2 (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)  

first :: (a, b, c) -> a  
first (x, _, _) = x  
  
second :: (a, b, c) -> b  
second (_, y, _) = y  
  
third :: (a, b, c) -> c  
third (_, _, z) = z  

fourth :: (a, b, c, d) -> d
fourth (_, _, _, d) = d

head'' :: [a] -> a
head'' [] = error "Can't call on empty list"
head'' (x:_) = x

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y  

length'' :: (Num b) => [a] -> b -- return type of b which is a Num. Take a list of type a
length'' [] = 0
length'' (_:xs) = 1 + length' xs -- remove head and add 1

-- let xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
-- [a+b | (a,b) <- xs] -- a is first elem, b is second elem. add a and b

--lasts :: [a] -> a
--lasts [] = error "Cant use empty list"
--lasts (x:xs) = x
