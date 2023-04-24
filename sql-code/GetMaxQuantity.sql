create procedure GetMaxQuantity()
select MAX(Quantity) as MaxQuantityInOrder from Orders;