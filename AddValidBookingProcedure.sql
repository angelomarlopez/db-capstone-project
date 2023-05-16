DELIMITER $$
CREATE PROCEDURE AddValidBooking (IN booking_date DATE, IN table_number INT, IN customer_id INT)
BEGIN
    DECLARE booking_status VARCHAR(100);
    DECLARE rollback_flag BOOLEAN DEFAULT FALSE;
    
    START TRANSACTION;
    
    INSERT INTO littlelemondm.booking (bookingID, bookingDate, tableNo, customerID)
    VALUES (table_number+customer_id*7, booking_date, table_number, customer_id);
    
    IF EXISTS (SELECT 1 FROM littlelemondm.booking WHERE bookingDate = booking_date AND tableNo = table_number AND customerID <> customer_id) THEN
        SET booking_status = CONCAT('Table ', table_number, ' is already booked');
        SET rollback_flag = TRUE;
    ELSE
        SET booking_status = CONCAT('Table ', table_number, ' is available');
        SET rollback_flag = FALSE;
    END IF;
    
    IF rollback_flag THEN
        ROLLBACK;
        SELECT booking_status AS 'Booking Status (Cancelled)';
    ELSE
        COMMIT;
        SELECT booking_status AS 'Booking Status (Confirmed)';
    END IF;
    
END;
$$