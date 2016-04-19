-- Find the last element of a list.

myLast :: [a] -> a

myLast []     = error "empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

