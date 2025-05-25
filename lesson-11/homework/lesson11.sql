
-- HOMEWORK
--task 1
select O.OrderID,C.FirstName,
 C.LastName,O.OrderDate from Orders O
join Customers C on O.CustomerID=C.CustomerID
where O.OrderDate>'2022-12-31'
--task 2
select e.Name,d.DepartmentName from Employees e
join Departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName in('Sales','Marketing')
--task 3

select d.DepartmentName, max(e.Salary) as MAXSalary from Employees e
join
 Departments d on e.DepartmentID=d.DepartmentID
 
 group by d.DepartmentName 
 -- task 4
 select c.FirstName,c.LastName,o.OrderID,o.OrderDate from Customers c
 join
  Orders o on c.CustomerID=o.CustomerID
  where c.Country='USA' and Year(o.OrderDate)='2023'
  -- task 5
  select c.FirstName,c.LastName,count(o.OrderID) as TotalOrders from Orders o
 join Customers c on o.CustomerID=c.CustomerID

 group by c.FirstName,c.LastName
  order by count(o.OrderID) desc
  -- task 6
  select p.ProductName,s.SupplierName from Products p
  join
   Suppliers s on p.SupplierID=s.SupplierID
   where s.SupplierName in ('Gadget Supplies','Clothing Mart')
   order by s.SupplierName desc
   -- task 7
select c.FirstName,c.LastName,max(o.OrderDate) as MostRecentOrderDate from Customers c
left join
 Orders o on c.CustomerID=o.CustomerID
 group by c.FirstName,c.LastName
 --task 8
 select c.FirstName,c.LastName,o.TotalAmount from Orders o
 join Customers c on o.CustomerID=c.CustomerID
 where o.TotalAmount>=500
 --task 9
 
 select p.ProductName,s.SaleDate,s.SaleAmount from Products p

join Sales s on p.ProductID=s.SaleID
where YEAR(s.SaleDate)=2022 or s.SaleAmount>400
-- task 10
select p.ProductName,sum(s.SaleAmount) TotalSalesAmount from Sales s
join
 Products p on s.ProductID=p.ProductID
 group by p.ProductName
 --task 11
 select e.Name,d.DepartmentName,e.Salary from Employees e
join Departments d on d.DepartmentID=e.DepartmentID
where d.DepartmentName='Human Resources' and e.Salary>60000
-- task 12
select p.ProductName,s.SaleDate,p.StockQuantity from Products p
join Sales s on p.ProductID=s.ProductID
where Year(s.SaleDate)=2023 and p.StockQuantity>100
-- task 13
Select e.Name,d.DepartmentName,e.HireDate from Employees e
join Departments d on d.DepartmentID=e.DepartmentID
where d.DepartmentName='Sales' or year(e.HireDate)>2020
-- task 14
select c.FirstName,c.LastName,o.OrderID,c.Address,o.OrderDate
from Customers c

join  Orders o on o.CustomerID=c.CustomerID
where c.Country='USA' and c.Address LIKE '[0-9][0-9][0-9][0-9]%'
-- TASK 15
select p.ProductName,p.Category,s.SaleAmount from Products p
join Sales s on p.ProductID=s.ProductID
where p.Category='Electronics' or s.SaleAmount>350
-- task 16

select p.ProductName,count(p.ProductName) as CountProduct from Products p
join
 Categories c on c.CategoryID=Category
 group by p.ProductName
 -- task 17
 select c.FirstName,c.LastName,c.City,o.OrderID,o.TotalAmount from Customers c
 join
  Orders o on o.CustomerID=c.CustomerID
  where c.City='Los Angeles' and o.TotalAmount>300
  -- task 18
  select e.Name,d.DepartmentName from Employees e
join Departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName in('Human Resources','Finance') or e.Name like '%i%e%a%o%u%'
-- task 19
select e.Name,d.DepartmentName,e.Salary from Employees e
join Departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName in('Sales','Marketing') and e.Salary>=60000














