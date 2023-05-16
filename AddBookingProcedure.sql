DELIMITER $$
CREATE PROCEDURE AddBooking(IN booking_id INT, IN customer_id INT, IN booking_date Date, IN table_num INT)
BEGIN
	INSERT INTO littlelemondm.booking (bookingID, bookingDate, tableNo, customerID)
    VALUES (booking_id, booking_date, table_num, customer_id);
END
$$