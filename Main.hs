module Main where

import System.Exit as E
import LibRSA as LRSA
import System.Random

main :: IO()
main = do
   LRSA.generate
   newStdGen
   continue <-getLine
   if (continue == "y")
      then main
   else
      E.exitSuccess

--main :: IO()
--main = do
--   putStrLn "Provide a base: "
--   inputBase <- getLine
--   putStrLn "Provide an exponent: "
--   inputExp <- getLine
--   putStrLn "Provide a modulus: "
--   inputModulus <- getLine
--   let base = (read inputBase :: Integer)
--   let exp = (read inputExp :: Integer)
--   let modulus = (read inputModulus :: Integer)
--   let answer = (LargePow base exp modulus)
--   putStrLn "Your answer is: "
--   print answer
--   putStrLn ""