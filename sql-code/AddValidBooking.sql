-- task 3
ALTER TABLE Bookings MODIFY COLUMN BookingID INT auto_increment;
drop procedure if exists AddValidBooking;

DELIMITER //
create procedure AddValidBooking(IN booking_date DATE, IN table_number INT)
BEGIN
DECLARE booked int default 0;

START TRANSACTION;  
SELECT count(1) into booked from Bookings
WHERE BookingDate = booking_date and TableNumber = table_number;

INSERT INTO Bookings (BookingDate, TableNumber) VALUES(booking_date, table_number);

IF booked THEN 
SELECT CONCAT("Table ", table_number, " is already booked on ", booking_date, " - booking cancelled") as 'Booking Status';
ROLLBACK;
ELSE 
SELECT CONCAT("Table ", table_number, " has been booked on ", booking_date) as 'Booking Status';
COMMIT; 
END IF;

END//

call AddValidBooking('2022-10-11', 7);