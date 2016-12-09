module Main (main) where

import System.IO

for :: Int -> a -> (Int -> a -> a) -> a
for i def f =
    if i == 0
    then def
    else for (i - 1) (f i def) f

main :: IO ()
main = print $
    for 1000 0 (\i sum -> sum + i)
