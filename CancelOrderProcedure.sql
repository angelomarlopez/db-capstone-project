CREATE PROCEDURE CancelOrder(IN orderid INT)
DELETE FROM littlelemondm.order WHERE orderID = orderid;

CALL CancelOrder(12345);