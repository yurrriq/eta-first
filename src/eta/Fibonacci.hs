{-# LANGUAGE MagicHash #-}

module Fibonacci
  ( fib
  ) where

import           Java


data {-# CLASS "eta.example.Fibonacci" #-}
  Fibonacci = Fibonacci (Object# Fibonacci)
  deriving Class


fib :: Int -> Java Fibonacci Int
fib n = return $ fib' n


fib' :: Int -> Int
fib' 0 = 1
fib' 1 = 1
fib' n = fib' (n - 1) + fib' (n - 2)

foreign export java fib :: Int -> Java Fibonacci Int
