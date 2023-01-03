
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

    f1 :: Double -> Double -> Double -> Double
    f1 x y z = x ** (y/z)

    f2 :: Double -> Double -> Double -> Double
    f2 x y z = sqrt (x/y - z)

    f3 :: Bool -> Bool -> [Bool]
    f3 x y = [x == True] ++ [y]

    f4 :: String -> String -> String -> Bool
    f4 x y z = x == (y ++ z)


-- Question 2

-- Why should we define type signatures of functions? How can they help you? How can they help others?

-- It's good practice to have type sigatures. They can help other people understand your code.



-- Question 3

-- Why should you define type signatures for variables? How can they help you?

-- Even though it generally is not done. On work with multiple contributors it can help. 


-- Question 4

-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
-- The show function can take any type and return a string.

-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?

-- Yes you can and yes we did. When we used the function words and lines we got a list of strings and a string is 
-- also a list of characters. Here is an example:
    listOfLists :: [String]
    listOfLists = ["abc","def","ghi"]

    v6 :: Char
    v6 = listOfLists !! 1 !! 2