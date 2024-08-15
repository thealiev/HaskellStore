module Order
    ( Order(..)
    , createOrder
    , listOrders
    ) where

import Database
import Product
import Customer

data Order = Order { orderId :: Int, orderCustomer :: Customer, orderProducts :: [Product] }
    deriving (Show, Eq)

createOrder :: Database Order -> Order -> Database Order
createOrder db order = db { items = order : items db }

listOrders :: Database Order -> [Order]
listOrders = items
