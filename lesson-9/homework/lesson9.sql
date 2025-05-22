--uyga vazifa 9
-- task 1
SELECT Products.ProductName,Suppliers.SupplierName FROM Products
CROSS JOIN Suppliers 
--task 2
select D.DepartmentName,E.Name  from Departments D
cross join Employees E
-- tasak 3
SELECT Products.ProductName,Suppliers.SupplierName FROM Products
 JOIN Suppliers on Products.SupplierID=Suppliers.SupplierID
 -- task 4
 select C.FirstName,C.LastName,O.OrderID from Orders O
inner join Customers C on O.CustomerID=C.CustomerID
-- task 5
select * from Courses
cross join Students
-- task 6
select P.ProductName,O.OrderID from Products P
inner  join Orders O on P.ProductID=O.ProductID
-- task 7
select D.DepartmentName,E.Name from Departments D
join Employees E on D.DepartmentID=E.DepartmentID
-- task 8
select S.Name,E.CourseID from Students S
join Enrollments E on S.StudentID=E.StudentID
-- task 9
Select O.OrderID,P.PaymentID  from Payments P
inner join Orders O on O.OrderID=P.OrderID
-- task 10
select O.OrderID,P.ProductName  from Orders O
inner join Products P on O.ProductID=P.ProductID
where P.Price>100
-- task 11

select * from Employees

left join Departments on Employees.DepartmentID=Departments.DepartmentID
where Departments.DepartmentID is null
-- task 12
select O.OrderID,P.ProductName,O.Quantity,P.StockQuantity from Orders O
join Products P on O.ProductID=P.ProductID
where O.Quantity>P.StockQuantity
--task 13
select C.FirstName,C.LastName,S.ProductID from Customers C
join Sales S on C.CustomerID=S.CustomerID where S.SaleAmount>=500
-- task 14

select S.Name,C.CourseName from Students S
join Enrollments E on S.StudentID=E.StudentID
join Courses C on C.CourseID=E.CourseID
-- task 15
Select P.ProductName,S.SupplierName from Products P
join Suppliers S on P.SupplierID=S.SupplierID
where S.SupplierName like '%Tech%'
-- task 17
select D.DepartmentName,E.Name from Departments D
join Employees E on D.DepartmentID=E.DepartmentID
-- task 18
select P.ProductName,C.CategoryName from  Products P
join  Categories C on P.Category=C.CategoryID
where C.CategoryName in('Electronics','Furniture')
--task 19
select C.FirstName,C.Country,S.SaleID from Sales S
inner join Customers C on S.CustomerID=C.CustomerID where C.Country='USA'
--task 20
Select O.OrderID,C.FirstName,O.TotalAmount from Orders O
inner join Customers C on O.CustomerID=C.CustomerID
where C.Country='Germany' and O.TotalAmount>100
-- task 21
select e1.Name,e1.DepartmentID from Employees e1
join Employees e2 on  e1.EmployeeID<e2.EmployeeID
where e1.DepartmentID<>e2.DepartmentID
-- task 22
select p.PaymentID,p.OrderID,p.Amount,o.Quantity,pr.Price ,(o.Quantity*pr.Price) as tolov_qilingan_miqdor
from Payments p

join Orders o on p.OrderID=o.OrderID

join Products pr on o.ProductID=pr.ProductID

where p.Amount<>(o.Quantity*pr.Price)
-- task 23
select s.StudentID,s.Name from Students s
left join Enrollments e on s.StudentID=e.StudentID
where e.CourseID is null
-- task 24
select e1.EmployeeID,e1.Name as maneger_name,e1.Salary as maneger_Salary,
e1.EmployeeID,e1.Name as employee_name,e1.Salary as employee_Salary
from Employees e1
join Employees e2 on e1.EmployeeID=e2.ManagerID
where e1.Salary<=e2.Salary
--task 25



select c.FirstName,c.LastName,ord.TotalAmount from Customers c

join Orders ord on c.CustomerID=ord.CustomerID

left join Payments p on ord.OrderID=p.OrderID
where p.PaymentID is null
