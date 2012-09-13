--  Find the last but one element of a list.

elementAt :: [a] -> Int -> a

elementAt (x:xs) n
  | n <= 0    = error "out of range"
  | n == 1    = x
  | otherwise = elementAt xs (n-1)
