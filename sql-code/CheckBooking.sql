-- task 2
drop procedure if exists CheckBooking;

DELIMITER //
create procedure CheckBooking(in booking_date date, in table_number int)
begin
declare booked int default 0;
select count(1) into booked from Bookings
where BookingDate = booking_date and TableNumber = table_number;
select if(booked, CONCAT("Table ", table_number, " is already booked"), CONCAT("Table ", table_number, " has not been booked yet.")) as "Booking Status";
end //
DELIMITER ;

call CheckBooking('2022-10-10', 4);