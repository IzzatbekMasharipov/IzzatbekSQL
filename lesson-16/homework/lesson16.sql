homework 16
-- task 1
with numbers as(
select 1 number 
union all
select number +1 from numbers where number <1000)
select * from Numbers
-- task 2



select e.EmployeeID,E.FirstName,e.LastName,s.Total_Sales from Employees e
 join (select Employeeid,sum(salesAmount) Total_Sales from Sales  group by Employeeid) as s
 on e.EmployeeID=s.EmployeeID
 -- task 3
 select * from Employees

 with cte as(select avg(salary) avg_salary from Employees) 
 select *from cte
 --task 4


select p.ProductID,p.ProductName,dt.max_SalesAmount from  (select productID,max(SalesAmount) max_SalesAmount  from Sales group by productID ) dt
join  Products p on p.ProductID=dt.ProductID
-- task 5
with numbers as(
select 1 number
union all
select number*2 from numbers where number<1000000)
select * from numbers
-- task 6
with cte as(select EmployeeID,count(*) as Sales_Amount from Sales group by EmployeeID having count(*)>=5)
select e.EmployeeID,e.FirstName,e.LastName,cte.Sales_Amount from cte join Employees e on e.EmployeeID=cte.EmployeeID

-- task 7

with cte as (select productID,sum(SalesAmount) as Total_Sales from Sales group by productID)
select * from Products p join cte c on p.ProductID=c.productID
where c.Total_sales>500
-- task  8
select * from Employees

with cte as(select avg(salary) avg_salary from Employees)
select * from Employees e join cte c on  e.salary>c.avg_salary

--task 1


select top 5 dt.Total_sales,e.EmployeeID,e.FirstName,e.LastName from  (select EmployeeID,Count(SalesID) as Total_sales from Sales group by EmployeeID) as dt
join Employees e on e.EmployeeID=dt.EmployeeID
order by dt.Total_sales desc 
--task 2
select p.CategoryID,sum(dt.total_sales) as total_sales from (select ProductID,sum(SalesAmount) as total_sales from Sales group by ProductID)as dt
join Products p on p.ProductID=dt.ProductID
group by p.CategoryID
--task 3


with faktaryalcte as(
select Number as original_son,1 as n,1 as faktaryal
from Numbers1
union all
select original_son,n+1,(n+1)*faktaryal from faktaryalcte where n+1<=original_son)
select original_son as Number,max(faktaryal) as faktaryal from faktaryalcte
group by original_son
--task 4
with belgilar as(
select id,String,1 as pozitsiya ,substring(String,1,1) as harf   from Example
union all
select id,String,pozitsiya+1,substring(String,pozitsiya+1,1) 
from belgilar where pozitsiya+1<=len(String))
select id,pozitsiya,harf from belgilar
order by id

--task 5
with oyfarqi as(
select s1.SaleDate as joriy_oy,
s1.SalesAmount joriy_savdo,
s2.SalesAmount as avvalgi_savdo,
s1.SalesAmount-s2.SalesAmount as farq from      Sales s1 left join Sales s2 on DATEADD(DAY,2,s2.SaleDate)=s1.SaleDate)
select * from oyfarqi
order by joriy_oy
--task 6
select e.EmployeeID,e.FirstName,e.LastName,dt.chorak,dt.chorak_sale from (select employeeid, DATEPART(quarter,SaleDate) as chorak,sum(SalesAmount) as chorak_sale from Sales
group by employeeid, DATEPART(quarter,SaleDate)) as dt
join Employees e on e.EmployeeID=dt.EmployeeID
where dt.chorak_sale>45000
--diffikult task
-- task 1
with finobachi as(
select 1 as n,0 as finb1,1 as finb2
union all
select n+1,finb2,finb1+finb2 
from finobachi 
where n<20)
select n,finb1 from finobachi
-- task 2
select * from FindSameCharacters
where len(Vals)>1 and len(replace(Vals,left(Vals,1),''))=0
--task 3
declare @n int=5;
with numbers as(
select 1 son,'1' natija
union all
select son+1,natija+CONVERT(varchar,son+1)
from numbers where son<5)
select * from numbers
-- task 4

select *  from Employees
select e.EmployeeID,e.FirstName,e.LastName,dt.total_amount from (select employeeID,sum(salesAmount) as total_amount from Sales
where Saledate>=dateadd(MONTH,-6,getdate())
group by employeeID) as dt
join Employees e on e.EmployeeID=dt.EmployeeID
order by total_amount desc
