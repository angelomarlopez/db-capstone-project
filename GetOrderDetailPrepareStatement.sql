PREPARE GetOrderDetail FROM 'SELECT orderID, quantity, totalCost FROM littlelemondm.order WHERE orderID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;