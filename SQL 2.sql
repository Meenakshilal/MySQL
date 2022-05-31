show databases;
use intro_sql;
CREATE table employee_details
(
Emp_name VARCHAR (50) not null,
Emp_sirname VARCHAR (50),
Position VARCHAR (50) not null,
Age INT,
Salary INT
);
Insert employee_details Values('Jonie','Weber','Secretary',28,19500.00);
 
Insert employee_details Values('Potsy','Weber','Programmer',32,45300.00);
Insert employee_details Values('Dirk','Smith','Programmer 2',45,75020.00);
Insert employee_details Values('Moni','Lal','CEO',25,523648.00);
Insert employee_details Values('Sam','Singh','VC',27,512467.00);
Insert employee_details Values('Silly','Weber','Programmer',26,49500.00);
Insert employee_details Values('Jhon','Sith','PO',22,18500.00);
Insert employee_details Values('Jenny','West','Data handler',32,56700.00);
select * from employee_details;
select * from employee_details where Salary > '30000';
select Emp_name,Emp_sirname from employee_details where Age < 30;
select Emp_name,Emp_sirname,salary from employee_details where Position = 'Programmer';
select * from employee_details where Emp_sirname like '%ebe%';
select * from employee_details where Age > '80';

select Emp_name as firts_name from employee_details where Emp_name = 'Potsy';
--UPDATES--
Set SQL_SAFE_UPDATES = 0;
update employee_details set Position = 'Senior Programmer' where Emp_name = 'Potsy';
update employee_details set Emp_sirname = 'Weber-Williams' where Emp_name = 'Jonie';
update employee_details set age = age + 1 where Emp_name = 'Dirk';
update employee_details set Position = 'Administrative Assistant' where position = 'Secretary';
update employee_details set salary = salary + 3500 where salary < 30000;
select * from employee_details;

--DELETE--
Delete from employee_details where position = 'PO'; 
select * from employee_details;