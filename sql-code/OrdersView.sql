create view OrdersView as
select OrderID, Quantity, TotalCost
from Orders
where quantity > 2;
