CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(quantity) FROM littlelemondm.order;

CALL GetMaxQuantity();