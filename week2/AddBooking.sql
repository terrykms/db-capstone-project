delimiter //


create procedure AddBooking(in booking_id int, in customer_id int, in booking_date date, in table_number int)
begin
insert into Bookings values (booking_id, booking_date, table_number, customer_id);
select "New booking added" as 'Confirmation';
end //

call AddBooking(9, 3, '2022-12-10', 4);