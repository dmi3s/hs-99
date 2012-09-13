-- Find the K'th element of a list. The first element in the list is number 1

elementAt :: [a] -> Int -> a

elementAt (x:xs) n
  | n <= 0    = error "out of range"
  | n == 1    = x
  | otherwise = elementAt xs (n-1)
