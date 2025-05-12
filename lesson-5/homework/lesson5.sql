--uyga vazifalar
 --task 1
 select ProductName as Name from Products 
 --task 2
 select *from Customers as Client
 --task 3
 select ProductName from Products
 union
 select ProductName from Products_Discounted
 --task 4
 select ProductName from Products
 intersect
select ProductName from Products_Discounted
--task 5

select distinct FirstName,Country from Customers
--task 6
select *,
case 
when Price>1000 then 'High' 
else  'Low' end
from Products
--task 7
select *,iif(StockQuantity>100,'Yes','No')
from Products_Discounted
--task 8
select ProductName from Products
 union
 select ProductName from Products_Discounted
 --task 9
 select ProductName from Products
 except
 select ProductName from Products_Discounted
 -- task 10
 select *,
 iif(Price>1000,'Expensive','Affordable')
 from Products
 --task 11
 select * from Employees
 where age<25 or Salary >60000
 --task 12
 update Employees
 set Salary=Salary+(Salary*0.1) where DepartmentName='HR' or EmployeeID=5
 --task 13

 select *,
 case 
 when SaleAmount>500 then 'Top Tier' 
 when SaleAmount>200 or SaleAmount<500 then 'Mid Tier' 
 else 'Low Tier' end
 from Sales
 --task 14

 select Customerid from Orders
 EXCEPT
  select Customerid from Sales
  --task 15
  
  select *,
  case 
  when Quantity=1 then 3 
  when Quantity=2 or Quantity=3 then 5
  else 7 end
  from Orders
