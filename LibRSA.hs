module LibRSA where

----convert to tail recursion ?
modLoop :: Integer -> Integer -> Integer -> Integer -> Integer -> Integer
modLoop iterator exponent result base modulus
     | (iterator == exponent) = result
     | (iterator < exponent) = modLoop (iterator + 1) (exponent) (mod (result * base) modulus) base modulus
     | (iterator > exponent) = (-1)


----- check for prime numbers, source: https://rextester.com/FNYRR92702
factors n = [x | x <- [1..n], n `mod` x == 0]
is_prime n = factors n == [1, n]