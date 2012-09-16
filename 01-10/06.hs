-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

isPalindrome :: (Eq a) => [a] -> Bool

isPalindrome xs = xs == reverse xs

isPalindrome' xs = testRev [] xs xs where
  testRev rev (x:xs) (_:_:ys) = testRev (x:rev) xs ys
  testRev rev (x:xs) [_]      = rev == xs
  testRev rev xs     []       = rev == xs
