# Introduction
This project is served as a public API of [repo-complexity-analyzer](https://github.com/ShifanGu/repo-complexity-analyzer) project
# Entry Point
```haskell
type API = "load_environment_variables" :> QueryParam "name" String :> Get '[JSON] ResponseData
      :<|> "getREADME"                  :> Get '[JSON] ResponseData
      :<|> "authors"                    :> Get '[JSON] [Author]
      :<|> "author"                     :> Capture "name" String:> Get '[JSON] Author
      :<|> "analysisAllTheRepo"         :> Get '[JSON] [(FilePath, Double)]
      :<|> "fetchRepo"                  :> QueryParam "url" String:> Get '[JSON] ResponseData
      :<|> "methodComplexity"           :> QueryParam "url" String:> Get '[JSON] [(FilePath, AnalysisResult)]
      :<|> "fileComplexity"             :> QueryParam "url" String:> Get '[JSON] [(FilePath, Double)]
      :<|> "projectComplexity"          :> QueryParam "url" String:> Get '[JSON] (String,Double)
```
# Useage
1. open your <code>stack.yaml</code> file and add the following code
```haskell
packages:
  - '.'
  - location:
      git: https://github.com/ShifanGu/repo-complexity-lib.git
      commit: 6abc73951d4b6161523dcb3498e0c80bf999c553
```
2. Then open <code>your-project.cabal</code> and edit the build-depends
```haskell
  build-depends:       base >= 4.7 && < 5
                     , repo-complexity-lib
```
3.Import this API inside your project
```haskell
import           RepoComplexityApi
```