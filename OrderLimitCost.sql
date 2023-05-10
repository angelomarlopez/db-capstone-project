CREATE VIEW OrderLimitCost AS 
SELECT ord.customerID as 'CustomerID', customerName as 'FullName', orderID as 'OrderID', 
totalCost as 'Cost', cuisineName as 'MenuItem', courseName as 'CourseName'
FROM littlelemondm.order as ord 
INNER JOIN customer ON ord.customerID = customer.customerID
INNER JOIN menu ON ord.menuID = menu.menuID
INNER JOIN cuisine ON menu.cuisineID = cuisine.cuisineName;

SELECT * from OrderLimitCost;