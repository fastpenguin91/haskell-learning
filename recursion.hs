maximum' :: (Ord a) => [a] -> a   -- Return type of a from list [a]
maximum' [] = error "maximum of empty list"  -- edge case of empty list
maximum' [x] = x    -- list of one element is  x?
maximum' (x:xs)      -- take first elem of the list, put the rest into xs.
    | x > maxTail = x     -- if x is bigger than "maxTail", then return x
    | otherwise = maxTail     -- otherwise, return maxTail
    where maxTail = maximum' xs  -- maxTail is equal to the tail of the list.


    --maximum' [6, 4, 9, 2] = 6:[4, 9, 2], 6 > 4:[9,2] > 9:[2] > 2 ?????


maximum'' :: (Ord a) => [a] -> a
maximum'' [] = error "maximum of empty list"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum'' xs)


-- A few more recursive functions

--replicate' :: (Num i, Ord i) => i -> a -> [a]
--replicate' n x
--    | n <= 0     = []   -- if n is less than or equal to 0 return empty list
--    | otherwise x:replicate' (n-1) x  -- return x as the first element n-1 times (n defined in parameter)


--take' :: (Num i, Ord i) => i -> [a] -> [a]  -- parameters are number and... order? of type i and a list of type [a]. return a list of type [a]
---take' n _     -- paremeters? n and doesn't matter what the second parameter is? as long as it's a list...
--    | n <= 0    = []   --- if n less than or equal to 0 return empty list
--take' _ []      = []   -- if the list is empty, return empty list
--take' n (x:xs)  = x : take' (n-1) xs  --- break list into head and tail. return head, and run the function again on the tail.

--reverse' :: [a] -> [a]
--reverse' [] = []
--reverse' (x:xs) = reverse' xs ++ [x]

repeat' :: a -> [a]  -- take type of a and return list of type a
repeat' x = x:repeat' x  -- infinite list

--take 5 (repeat' 3) -- gives us a list of 5 3's

zip' :: [a] -> [b] -> [(a,b)] -- take list of type a, and list of type b. return list of tuples (a, b)
zip' _ [] = [] -- if secondn parameter is empty, return empty list
zip' [] _ = [] -- if first parameter is empty, return empty list
zip' (x:xs) (y:ys) = (x,y):zip' xs ys -- pop head off first of each list, put them on beginning of list as a tuple and call zip' recursively for the next iteration.

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x    = True
    | otherwise = a `elem'` xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerSorted = quicksort [a | a <- xs, a <= x] -- return each value of a when a is less than or equal to x.
      biggerSorted = quicksort [a | a <- xs, a > x]   -- return each value of a when a is greater than x
  in smallerSorted ++ [x] ++ biggerSorted
