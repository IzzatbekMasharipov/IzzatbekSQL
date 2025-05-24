use lesson10
-- uyga vazifa 
--task 1
select e.Name,e.Salary,d.DepartmentName from Employees e
join Departments d on e.DepartmentID=d.DepartmentID
where e.Salary>50000
-- task 2
select C.FirstName,C.LastName,O.OrderDate from Customers C
join Orders O on C.CustomerID=O.CustomerID
where year (O.OrderDate)=2023
-- task 3
select e.Name,d.DepartmentName from Employees e
left join Departments d on e.DepartmentID=d.DepartmentID
--task 4
select s.SupplierName,p.ProductName from  Suppliers s 
left join Products p on s.SupplierID=p.SupplierID
-- task 5
select o.OrderID,o.OrderDate,p.PaymentDate,p.Amount from Orders o
full  join Payments p on o.OrderID=p.OrderID
-- task 6
select e1.Name as employee_neme,e1.Name as maneger_name from Employees e1
left join Employees e2 on e1.ManagerID=e2.EmployeeID
-- task 7
select s.Name,c.CourseName from Students s
join Enrollments en on s.StudentID=en.StudentID
join Courses c on c.CourseID=en.CourseID
where c.CourseName = 'Math 101'
-- task 8
select C.FirstName,C.LastName,O.Quantity from Customers C
join Orders O  on C.CustomerID=O.CustomerID
where O.Quantity>3
-- task 9
select E.Name,D.DepartmentName from Employees E
join Departments D on E.DepartmentID=D.DepartmentID
where D.DepartmentName='Human Resources'
-- task 10 


select D.DepartmentName,count(E.EmployeeID) from Departments D
join Employees E on E.DepartmentID=D.DepartmentID
group by D.DepartmentName 
having count(E.EmployeeID)>5
-- task 11
select P.ProductID,P.ProductName from Products P
left join Sales S on P.ProductID=S.ProductID
where S.SaleID is null
-- task 12

select C.FirstName,C.LastName,count(O.OrderID) as TotalOrders from Customers C
join Orders O on C.CustomerID=O.CustomerID
group by C.FirstName,C.LastName
having count(O.OrderID)>=1
-- task 13
select E.Name,D.DepartmentName from Departments D
inner join  Employees E on E.DepartmentID=D.DepartmentID
-- task 14
Select e1.Name as Employee1,e1.Name as Employee2,e1.ManagerID from Employees e1
join Employees e2 on e1.ManagerID=e2.ManagerID and e1.EmployeeID<e2.EmployeeID
-- task 15
select O.OrderID,Year(O.OrderDate),C.FirstName,C.LastName from Orders O
join Customers C on O.CustomerID=C.CustomerID
where Year(O.OrderDate)='2022'
-- task 16


Select E.Name,E.Salary,D.DepartmentName from Employees E
join Departments D on D.DepartmentID=E.DepartmentID 
where D.DepartmentName='Sales' and E.Salary>60000
-- task 17
select o.OrderID,o.OrderDate,p.PaymentDate,p.Amount from Orders o
join Payments p on o.OrderID=p.OrderID
-- task 18
select P.ProductID,P.ProductName from Products P
left join Orders O on P.ProductID=O.ProductID
where O.OrderID is null
-- task 19
SELECT e.Name, e.Salary
FROM Employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM Employees e2
    WHERE e2.DepartmentID = e.DepartmentID
);
-- task 20 
select O.OrderID,O.OrderDate  from Orders O
left join Payments P on O.OrderID=P.OrderID
where P.PaymentID is null and O.OrderDate<'2020-01-01'
--task 21


select p.ProductID,p.ProductName from Products p
left join Categories c on p.Category=c.CategoryID
where c.CategoryID is null
-- task 22
select e1.Name as Employee1,e1.Name as Employee2,e1.ManagerID,e1.Salary from Employees e1
 join Employees e2 on e1.ManagerID=e2.ManagerID and e1.EmployeeID<>e2.EmployeeID
 where e1.Salary>60000 and e2.Salary>60000
 -- task 23
 select e.Name,d.DepartmentName from Employees e 
 join
  Departments d on d.DepartmentID=e.DepartmentID
  where d.DepartmentName like 'M%'
  --task  24
  select s.SaleID,p.ProductName,s.SaleAmount from Products p 
  join  Sales s on s.ProductID=p.ProductID
  where s.SaleAmount>500
  -- task 25
  select s.StudentID,s.Name from Students s
 left  join Enrollments e on s.StudentID=e.StudentID
 left join Courses c on c.CourseID=e.CourseID
  where c.CourseName<>'Math 101' or e.CourseID is null
  -- task 26
  select o.OrderID,o.OrderDate,p.PaymentID from Orders o
  left join
   Payments  p on o.OrderID=p.OrderID
   where p.OrderID is null
   -- task 27
   select p.ProductID,p.ProductName,c.CategoryName  from Products p
   join Categories c on p.Category=c.CategoryID
   where c.CategoryName in( 'Electronics', 'Furniture')






