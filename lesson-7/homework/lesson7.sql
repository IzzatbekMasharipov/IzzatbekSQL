--uyga vazifalar 

--task 1
select min(cost) from Products
--task 2
select max(salary) from employees
--task 3
select count(*) from Customers
--task 4
select  count(distinct Category) from Products 
-- task 5
select sum (saleAmount) from Sales where ProductID=7
--task 6
select avg(Age) as avg_Age from Employees


-- task 7
select DepartmentName,count(DepartmentName) from Employees group by DepartmentName


--task 8
select Category,min(Price),max(Price) from Products group  by Category
-- task 9
select CustomerID,sum(SaleAmount) from Sales group by CustomerID

--task 10

select DepartmentName,count(*)from Employees group  by DepartmentName having count(*)>5
--task 11
select ProductID,sum(SaleAmount),avg(saleAmount) from Sales group by ProductID
--task 12


select DepartmentName,count(*) from Employees group by DepartmentName
Having DepartmentName='HR'

--task 13
 select DepartmentName,Max(Salary) as MAX_SALARAY,Min(Salary) as Min_SALARAY from Employees group by DepartmentName
 --task 14
 select DepartmentName,avg(Salary) as AVG_Salary from Employees group by DepartmentName
 -- task 15
 
 select DepartmentName,count( DepartmentName),avg(Salary) as AVG_Salary from Employees group by DepartmentName
 --task 16
select Category,avg(price) from Products group by Category having avg(price) >400
--task 17
select year(SaleDate),sum (saleamount) from Sales group by year(SaleDate)

--task 18
select CustomerID,count(OrderID) from Orders group by CustomerID having count(OrderID)>=3
--task 19

select DepartmentName from Employees group by DepartmentName having avg(Salary)>60000
-- task 20
select category ,avg(Price) from Products group by category having avg(Price)>150

-- task 21

select CustomerID,sum(SaleAmount) from Sales group by CustomerID having sum(SaleAmount)>1500
-- task 22
select DepartmentName,sum(Salary),avg(Salary) from Employees group by DepartmentName having avg(Salary)>65000

--task 23

select CustomerID,sum(TotalAmount),min(TotalAmount) from Orders where TotalAmount>50  group by CustomerID
-- task 24
select year (OrderDate) Sales_year,month (OrderDate) Sales_month,count(TotalAmount) from Orders 
group by year (OrderDate),month (OrderDate)
having count (distinct ProductID)>=2
--task 25
select year(OrderDate),min(Quantity),max(Quantity) from Orders group by year(OrderDate)

