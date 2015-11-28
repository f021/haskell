-- https://wiki.haskell.org/99_questions/1_to_10



-- 1 Problem
-- (*) Find the last element of a list.

myLast :: [a] -> a
myLast xs = last xs

myLast1 xs = head $ reverse xs



-- 2 Problem
-- (*) Find the last but one element of a list.

myButLast :: [a] -> a
myButLast xs = head $ tail $ reverse xs

myButLast1 xs = last $ init xs



-- 3 Problem
-- (*) Find the K'th element of a list.
-- The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt xs n = xs !! (n - 1)



-- 4 Problem
-- (*) Find the number of elements of a list.

myLength :: [a] -> Int
myLength []  = 0
myLength (_:xs) = 1 + myLength xs



-- 5 Problem
-- (*) Reverse a list.

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]



-- 6 Problem
-- (*) Find out whether a list is a palindrome.
-- A palindrome can be read forward or backward; e.g.
-- (x a m a x).

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == (reverse xs)



-- 7 Problem
-- (**) Flatten a nested list structure.

--my-flattern



-- 8 Problem 
-- (**) Eliminate consecutive duplicates of list elements.

-- Example:

-- * (compress '(a a a a b c c a a d e e e e))
-- (A B C A D E)


compress :: [a] -> [a]
compress [] = []



-- 9 Problem
-- (**) Pack consecutive duplicates of list elements
-- into sublists. If a list contains repeated elements
-- they should be placed in separate sublists.

-- Example:

-- * (pack '(a a a a b c c a a d e e e e))
-- ((A A A A) (B) (C C) (A A) (D) (E E E E))



-- 10 Problem
-- (*) Run-length encoding of a list. Use the result of problem
-- P09 to implement the so-called run-length encoding data
-- compression method. Consecutive duplicates of elements are
-- encoded as lists (N E) where N is the number of duplicates
-- of the element E.

-- Example:

-- * (encode '(a a a a b c c a a d e e e e))
-- ((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))