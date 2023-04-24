prepare GetOrderDetail from 'select OrderID, Quantity, TotalCost from Orders where CustomerID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;