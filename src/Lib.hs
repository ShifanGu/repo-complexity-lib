module Lib
    (
      module RepoComplexityApi,
      someFunc
    ) where
    	
import RepoComplexityApi

someFunc :: IO ()
someFunc = putStrLn "someFunc"
