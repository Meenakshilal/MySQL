use Intro_sql;			-- to use a particular table--
show tables				-- to show tables in a database--	
create table employees		-- to create a table in a database--
(
emp_name varchar(50) not null,
emp_id int not null,
manager_name varchar (50) not null,
division int not null,
primary key (emp_id)
)
show tables
select * from employees						-- to request a query--

create table emp_mee_2405
(
firstname varchar(50),
last_name varchar(50),
title varchar(50),
age int,
salary int
)

select * from emp_mee_2405

ALTER table emp_mee_2405			-- to make changes in the table. this is limited to only adding or deleting a column--
ADD gender 
varchar(1)

ALTER table 
emp_mee_2405
DROP column gender

select * from emp_mee_2405
insert emp_mee_2405 values		-- to insert values in a table--
(
'meena','singh','ms',12,758964
)
insert emp_mee_2405 values
(
'dheeraj','kumar','mr',27,795628
)
insert emp_mee_2405 values
(
'vikas','kumar','mr',20,856472
);
insert emp_mee_2405 values
(
'shakti','singh','mr',25,7698523
);
insert emp_mee_2405 values
(
'Sachin','singh','mr',22,564896
);
insert emp_mee_2405 values
(
'Rohan','singh','mr',19,563248
);
insert emp_mee_2405 values
(
'sapna','meher','mr',15,458965
);
insert emp_mee_2405 values
(
'priyanka','yadav','ms',25,475896
);
insert emp_mee_2405 values
(
'Monika','Negi','ms',30,647598
);
select * from emp_mee_2405 where title like '%s';

select * from emp_mee_2405 where last_name like 's%';

select * from emp_mee_2405 where age in (12,25);        -- in includes only those thing that are included in the bracket--

select * from emp_mee_2405 where age>10 and age < 26;      -- and is used to include both which creates a range in this case--

select * from emp_mee_2405 where firstname like '%n%'      -- when we have to fine that thing at any position--

