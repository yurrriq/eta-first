module Primes
  ( primes
  ) where


-- | The infinite list of prime numbers.
primes :: [Integer]
primes = filterPrime [2..]
  where
    filterPrime (p:xs) = p : filterPrime [x | x <- xs, not (p `divides` x)]
    filterPrime []     = []


-- | Return true iff m divides n.
divides :: Integral a => a -> a -> Bool
divides m n = n `mod` m == 0
