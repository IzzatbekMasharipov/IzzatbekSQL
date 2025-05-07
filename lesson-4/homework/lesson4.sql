--uyga vazifalar
--task 1
select top(5) *from Employees order by Salary desc
--task 2
select distinct Category from Products
--task 3
select *from Products 
where Price > 100
--task 4
select *from Customers 
where FristName like 'A%'
--task 5
select *from Products order by Price asc
--task 6
select *from Employees 
where Department='HR' and Salary>=60000
--task 7
select isnull(Email,'noemail@example.com') from Employees
--task 8
select *from Products
where Price>50 and Price<100
--task 9
select distinct Category,ProductName from Products
--task 10
select distinct Category,ProductName from Products order by ProductName desc
--task 11
select top(10)* from Products order by Price desc
--task 12
select coalesce(FirstName,LastName) from Employees
--task 13
select distinct Category,Price from Products
--task 14
select *from Employees 
where (Department ='Marketing') or (Age>30 and Age <40)
--task 15
select *from Employees order by Salary desc offset 10 rows fetch next 10 rows only
--task 16
select *from Products 
where Price<=1000 and Stock>50 
order by Stock asc
--task 17
select *from Products 
where ProductsName like '%e%'
--task 18
select from Employees 
where Department in('HR','IT','Finance')
--task 19
select *from Customers order by City asc,Postalcode desc
--task 20
select top(5)*from Products order by SalesAmount desc
--task 21
select concat (FirstName,' ',LastName) AS FullName from Employees
--task 22
select distinct Category,ProductName,Price from Products
where Price>50
--task 23
select *from Products 
where Price <(0.1*(select avg(Price)from Products))
--task 24
select *from Employees
where (Age<30)and Department in('HR','IT')
--task 25
select *from Customers
where Email like '%@gmail.com'
--task 26
SELECT * 
FROM Employees 
WHERE Salary > ALL (SELECT Salary FROM Employees WHERE Department = 'Sales');
--task 27
SELECT * 
FROM Orders 
WHERE OrderDate BETWEEN DATEADD(DAY, -180, LATEST_DATE) AND LATEST_DATE;
