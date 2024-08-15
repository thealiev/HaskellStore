module Main where

import Database
import Product
import Customer
import Order

main :: IO ()
main = do
    let productDB = addProduct emptyDB (Product 1 "Laptop" 999.99)
    let customerDB = registerCustomer emptyDB (Customer 1 "Alice")
    let orderDB = createOrder emptyDB (Order 1 (head $ listCustomers customerDB) (listProducts productDB))
    
    putStrLn "Products:"
    mapM_ print (listProducts productDB)
    
    putStrLn "\nCustomers:"
    mapM_ print (listCustomers customerDB)
    
    putStrLn "\nOrders:"
    mapM_ print (listOrders orderDB)
