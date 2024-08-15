module Customer
    ( Customer(..)
    , registerCustomer
    , listCustomers
    ) where

import Database

data Customer = Customer { customerId :: Int, customerName :: String }
    deriving (Show, Eq)

registerCustomer :: Database Customer -> Customer -> Database Customer
registerCustomer db customer = db { items = customer : items db }

listCustomers :: Database Customer -> [Customer]
listCustomers = items
