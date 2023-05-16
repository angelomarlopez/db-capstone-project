DELIMITER $$
CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEGIN
	DELETE FROM littlelemondm.booking WHERE bookingID = booking_id;
END
$$