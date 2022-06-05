show databases;
create database Joins;
use Joins;
Create table Customers
(
Customer_ID INT Not Null,
Customer_name VARCHAR (100),
Contact_number INT,
Address VARCHAR (100),
City VARCHAR (100),
Postal_Code Varchar(10),
Country Varchar(100),
Primary Key (Customer_ID)
);

Create table Orders
(
OrderID int not null,
Customer_ID Int,
Employee_ID INT,
Orderdate datetime,
ShipperID INT,
PRIMARY KEY (OrderID)
);
Insert into customers values (1, 'John',4589679 , 'London', 'London', 'B561HK' , 'UK'); 

Insert into customers values (2, 'Marry',458679 , 'Birmingham', 'Birmingham', '45nf56' , 'UK'); 
Insert into customers values (3, 'Shawn',756324 , 'California', 'California', 'fngbakfk' , 'USA'); 
Insert into customers values (4, 'David',124578, 'London', 'London', 'B561HK' , 'UK'); 
Insert into customers values (5, 'Harry',752164 , 'California', 'California', 'xhfgaui' , 'USA'); 
Insert into customers values (6, 'Shilpa',264589, 'Birmingham', 'Birmingham', 'BJ5867m' , 'UK'); 
Insert into customers values (7, 'Silly',345612 , 'DUDLEY', 'DUDLEY', 'B1246v' , 'UK'); 
Insert into customers values (8, 'Mill',761345 , 'London', 'London', 'BN57896' , 'UK'); 
Insert into customers values (9, 'Helx',723468 , 'Birmingham', 'Birmingham', 'B561HK' , 'UK'); 
Insert into customers values (10, 'Jordan',524163, 'DUDLEY', 'DUDLEY', 'NO25648M' , 'UK'); 
Insert into customers values (11, 'Suzan',134567 , 'London', 'London', 'B561HK' , 'UK'); 
Insert into customers values (12, 'Ash',217934, 'Birmingham', 'Birmingham', 'B561HK' , 'UK'); 
Insert into customers values (13, 'Grodan',237916, 'London', 'London', 'MLJ568' , 'UK'); 
Insert into customers values (14, 'Defh',546798, 'London', 'London', 'NMK453' , 'UK'); 

Insert into orders values (901,1,1,sysdate(),92801);
Insert into orders values (902,1,5,sysdate()-1,92820);
Insert into orders values (903,5,2,sysdate()-5,92523);
Insert into orders values (904,11,3,sysdate()+2,92802);
Insert into orders values (905,2,10,sysdate()+1,92807);
Insert into orders values (906,10,11,sysdate()-12,92801);
Insert into orders values (907,10,7,sysdate()-10,92805);
Insert into orders values (908,15,8,sysdate()-3,92802);
Insert into orders values (909,6,2,sysdate()-4,92812);
Insert into orders values (910,7,6,sysdate()-6,92878);
Insert into orders values (911,3,7,sysdate()-13,92802);
Insert into orders values (912,4,3,sysdate()-7,92803);
Insert into orders values (913,9,10,sysdate()-8,92807);
Insert into orders values (914,11,13,sysdate()-9,92865);
Insert into orders values (915,12,6,sysdate()-11,92825);
 select * from Customers;
 select * from Orders;
Select a.customer_name, a.contact_number,a.address, a.city, b.orderID, b.Employee_ID, b.Orderdate, b.ShipperID from Customers a LEFT JOIN orders b
ON a.Customer_ID = b.Customer_ID;  -- LEFTJOIN --

Select a.customer_name, a.contact_number,a.address, a.city, b.orderID, b.Employee_ID, b.Orderdate, b.ShipperID from Customers a RIGHT JOIN orders b
ON a.Customer_ID = b.Customer_ID;  -- RIGHTJOIN--


Select * from (Select a.customer_name, a.contact_number,a.address, a.city, b.orderID, b.Employee_ID, b.Orderdate, b.ShipperID from Customers a LEFT JOIN orders b
ON a.Customer_ID = b.Customer_ID) as n Where Customer_name = 'John';

Select a.customer_name, a.contact_number,a.address, a.city, b.orderID, b.Employee_ID, b.Orderdate, b.ShipperID from customers a INNER JOIN Orders b
on a.customer_ID = b.customer_ID;   -- INNER JOIN--


Select a.customer_name, a.contact_number,a.address, a.city, b.orderID, b.Employee_ID, b.Orderdate, b.ShipperID from Customers a LEFT JOIN orders b
ON a.Customer_ID = b.Customer_ID UNION
Select a.customer_name, a.contact_number,a.address, a.city, b.orderID, b.Employee_ID, b.Orderdate, b.ShipperID from Customers a RIGHT JOIN orders b
ON a.Customer_ID = b.Customer_ID; -- FULLJOIN --


Select a.customer_name, a.contact_number,a.address, a.city, b.orderID, b.Employee_ID, b.Orderdate, b.ShipperID from customers a CROSS JOIN Orders b
on a.customer_ID = b.customer_ID;  -- CROSS JOIN--