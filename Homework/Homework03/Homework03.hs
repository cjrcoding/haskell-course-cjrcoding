-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly.


checkConsumption :: (Ord a, Show a, Num a) => a -> a -> a -> [Char]
checkConsumption consumption time maxC
    | monthlyC > maxC = "Penguins don't liek you: " ++ show (monthlyC - maxC) ++ "kWh per month!"
    | monthlyC == maxC = "This is as far as you go!"
    | otherwise = "You're saving: " ++ show (maxC - monthlyC) ++ "kWh per month! Good job!!"
    where
        monthlyC = consumption * time * 30



-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

-- Question 1 + 2 answered in the function above



-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

bigExpression :: Double -> Double
bigExpression a =
  let b = a + 1
      c = b * 2
      d = c ^ 2
  in d - b



-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

guardsAndIf :: Double -> Double -> String
guardsAndIf a b
  | a < 0 && b < 0 = if (a < b) then show (b / a) else show (a / b)
  | a > b = if a /= 0 then show (a/b) else "a is larger but 0"
  | a < b = if b /= 0 then show (b/a) else "b is larger but 0"
  | otherwise = if a /= 0 then "1" else "a and b are both 0"

-- Question 5
-- Write a function that takes in two numbers and calculates the sum of square roots for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block.

invertCx :: Double -> Double -> Double
invertCx a b = let sqrtProd = sqrt abProd where abProd = a * b
               in sqrtProd + sqrtQuot
               where sqrtQuot = let abQuot = a / b in sqrt abQuot

