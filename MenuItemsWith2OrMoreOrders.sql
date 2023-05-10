CREATE VIEW MenuItemsWith2OrMoreOrders AS
SELECT courseName from littlelemondm.menu WHERE menuID IN (SELECT menuID FROM littlelemondm.order WHERE quantity > 2);

SELECT * FROM MenuItemsWith2OrMoreOrders;