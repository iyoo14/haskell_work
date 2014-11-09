import Data.List

main = do 
          cs <- getContents
          putStr $ funiq cs

funiq :: String -> String
funiq cs = unlines $ map head $ group $ fsort cs

fsort :: String -> [String]
fsort cs = sort $ lines cs
