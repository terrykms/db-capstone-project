delimiter //

create procedure CancelBooking(in booking_id int)
begin 
delete from Bookings where BookingID = booking_id;
select CONCAT("Booking ", booking_id, " cancelled") as Confirmation;
end //

call CancelBooking(9);