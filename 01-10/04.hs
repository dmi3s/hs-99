myLength :: [a] -> Int

myLength [] =  0
myLength (_:xs) = 1 + myLength xs


myLength' xs = myLengthImpl xs 0 where
  myLengthImpl [] n = n
  myLengthImpl (_:xs) n = myLengthImpl xs n+1

myLength'' = sum . map (const 1)
