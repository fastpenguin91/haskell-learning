--fizzbuzz xs = [ if x `mod` 3 == 0
 --               then "FIZZ!"
 --               else if x `mod` 5 == 0
 --               then "BUZZ!" | x <- xs]

 
--lucky :: (Integral a) => a -> String
--lucky 7 = "LUCKY NUMBER SeVEn"
--lucky x = "Sorry pal out of luck!"
-- What if I want to do some things to the input? Test if number is divisible by 3?

bmiTell :: Int -> String
bmiTell bmi
    | bmi `mod` 3 == 0 = "Fizz"  
    | bmi `mod` 5 == 0 = "Buzz"  
    | otherwise   = "You're a whale! Congratulations"

fizz :: [a] -> [b]
fizz bmi
    | bmi `mod` 3 == 0 = "Fizz"  
    | bmi `mod` 5 == 0 = "Buzz"  
    | otherwise   = "You're a whale! Congratulations"



calcBmis :: (RealFloat a) => [(a, a)] -> [a] -- take a list of tuples where values are of type a. return list of type a
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2
