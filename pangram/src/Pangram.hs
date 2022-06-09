module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram text =
  all (`elem` loweredText) alphabet
  where
    loweredText = map toLower text
    alphabet = ['a' .. 'z']
