create view OrdersView as
select OrderID, Quantity, TotalCost
from Orders
where quantity > 2;

select Customers.CustomerID, Customers.FullName 
from Customers inner join
Orders on Customers.CustomerID = Orders.CustomerID inner join
Menu on Orders.MenuID = Menu.MenuID inner join
MenuItems on Menu.MenuItemsID = MenuItems.MenuItemsID
where Orders.TotalCost > 150;

select MenuName
from Menu
where MenuID  = any (select MenuID from Orders where Quantity > 2);

create procedure GetMaxQuantity()
select MAX(Quantity) as MaxQuantityInOrder from Orders;

prepare GetOrderDetail from 'select OrderID, Quantity, TotalCost from Orders where CustomerID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;

delimiter //
create procedure CancelOrder(in order_id int)
delete from Orders where OrderID = order_id;
delimiter ;
