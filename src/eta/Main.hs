module Main
  ( main
  ) where

import           Primes (primes)


-- | Print the 101st prime number.
main :: IO ()
main = putStrLn $ "The 101st prime is " ++ show (primes !! 100)
