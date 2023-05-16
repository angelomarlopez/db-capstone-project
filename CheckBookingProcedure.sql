-- DELIMITER $$
-- CREATE PROCEDURE CheckBooking (IN date_to_check DATE, IN table_to_check INT)
-- BEGIN
-- 	DECLARE status VARCHAR(100);

-- 	IF EXISTS (SELECT 1 FROM littlelemondm.booking 
-- 				WHERE bookingDate = date_to_check AND tableNo = table_to_check) THEN
-- 		SELECT CONCAT('Table ', table_to_check, ' is already booked') AS 'Booking Status';
-- 	ELSE
-- 		SELECT CONCAT('Table ', table_to_check, ' is available') AS 'Booking Status';
-- 	END IF;
-- END $$

-- CALL CheckBooking("2022-11-12", 3)