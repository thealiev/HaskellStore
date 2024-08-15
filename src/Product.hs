module Product
    ( Product(..)
    , addProduct
    , listProducts
    ) where

import Database

data Product = Product { productId :: Int, productName :: String, productPrice :: Double }
    deriving (Show, Eq)

addProduct :: Database Product -> Product -> Database Product
addProduct db product = db { items = product : items db }

listProducts :: Database Product -> [Product]
listProducts = items
