--task-1
create table Employees(EmpID int,Name varchar(50),Salary decimal(10,2))
--task-2
insert into Employees(EmpID,Name,Salary) values (1,'Ali',2000)
insert into Employees(EmpID,Name,Salary) values (2,'vali',2500)
insert into Employees(EmpID,Name,Salary) values (3,'ahmad',3000)
select* from Employees
--task-3
update Employees set salary=7000 where EmpID=1;
select* from Employees
--task -4
delete from Employees where EmpID=2;
select* from Employees

--task-5

--delete-bu malum shartga mos keluvchi qatorlarni ochiradijadval tuzulmasi saqlab qolinadi
--truncate -bunda barcha yozuvlar tezkor ochiriladi ammo jadval tuzulmasi saqlab qolinadi
--drop-bunda butun jadval ochirilib tuzulma ham ochiriladi.
--task-6
alter table Employees ALTER COLUMN  Name varchar(100);
--TASK-7
alter table Employees add Depertment varchar(50); 
--task -8
alter table Employees alter column salary float;
--task -9
create table Departments (DepartmentID int PRIMARY KEY,DepartmentName varchar(50));
select *from Departments
--task -10
truncate table Employees
delete from Employees
--task-11
insert into Departments select 1,'anvar'
insert into Departments select 2,'jama'
insert into Departments select 3,'sadik'
insert into Departments select 4,'figo'
insert into Departments select 5,'rodri'
select *from Departments
--task-12
update Employees 
set Department='Managment' where Salary>5000;
--task-13
truncate table Employess;
--task-14
alter from Employees 
drop column department;
--task -15
Alter table Employees 
RENAME  to StaffMembers;
exec sp_rename 'Employees','StaffMembers';
--task -16
drop table Departments;
--task -17
create table PRODUDUCTS (ProductID primary key,ProductName varchar(50),Category varchar(50),Price decimal (10,2),StockQuantity int);
--task -18
alter table PRODUDUCTS 
add constraint chk_price check(price>0); 
--task-19
alter table produducts 
add StockQuantity int default 50;
--task-20
exec sp_rename 'PRODUDUCTS.Category','ProductCategory','column';
select *from PRODUDUCTS
--task-21
insert into PRODUDUCTS values(1,'olma',2,200,5)
insert into PRODUDUCTS values(2,'uzum',6,400,7),(3,'anor',8,2000,9),(4,'behi',1,100,3),(5,'sabzi',5,150,2)
--task-22
select *into Products_Backup
from PRODUDUCTS
--task-23
exec sp_rename 'PRODUDUCTS','Inventory';
--task-24
select*from Inventory
alter table Inventory
alter column Price float;
--task-25
alter table Inventory
add Productcode int IDENTITY(1000,5);


