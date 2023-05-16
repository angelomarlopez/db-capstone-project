DELIMITER $$
CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date Date)
BEGIN
	UPDATE littlelemondm.booking SET bookingDate = booking_date
    WHERE bookingID = booking_id;
END
$$