CREATE VIEW OrdersView as SELECT orderID, quantity, totalCost FROM littlelemondm.order WHERE quantity > 2;
SELECT * FROM OrdersView;