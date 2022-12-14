maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum pf empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate' :: Int -> a -> [a]
replicate' n x
    | n <= 0    = []
    | otherwise = x : replicate' (n - 1) x

take' :: Int -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ []   = []
take' n (x:xs) = x : take' (n - 1) xs

reverse' :: [a] -> [a]
reverse' []  = []
reverse' (x:xs) = reverse' xs ++ [x]

repeat' :: a -> [a]
repeat' x = x : repeat' x

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs)
    | a == x    = True
    | otherwise = a `elem'` xs

main = do
    print $ maximum' [1,5,2,4,3]
    print $ replicate' 3 5
    print $ replicate' 3 "a"
    print $ take' 3 [1,2,3,4,5]
    print $ reverse' [1,2,3,4,5]
    print $ take' 5 (repeat' 3)
    print $ zip' [1,2,3,4] ["aaa", "bbb", "ccc"]
    print $ elem' "c" ["a", "b", "c", "d"]
    print $ elem' "e" ["a", "b", "c", "d"]
