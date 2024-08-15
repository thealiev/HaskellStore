module Database
    ( Database(..)
    , emptyDB
    ) where

data Database a = Database { items :: [a] }

emptyDB :: Database a
emptyDB = Database []
