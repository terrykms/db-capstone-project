delimiter //
create procedure CancelOrder(in order_id int)
begin
delete from Orders where OrderID = order_id;
select CONCAT('Order ', order_id, ' has been removed.') as 'Confirmation';
end //