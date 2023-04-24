delimiter //
create procedure UpdateBooking(in booking_id int, in booking_date date)
begin
update Bookings
set BookingDate = booking_date
where BookingID = booking_id;
select CONCAT("Booking ", booking_id, " updated") as Confirmation;
end //

call UpdateBooking(9, '2022-12-31');

select * from Bookings;