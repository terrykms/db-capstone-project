select Customers.CustomerID, Customers.FullName 
from Customers inner join
Orders on Customers.CustomerID = Orders.CustomerID inner join
Menu on Orders.MenuID = Menu.MenuID inner join
MenuItems on Menu.MenuItemsID = MenuItems.MenuItemsID
where Orders.TotalCost > 150;