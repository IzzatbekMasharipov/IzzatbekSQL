homework 21
use lesson21

-- task 1 

select *,ROW_NUMBER() over (order by SaleDate) tartibraqamsana from ProductSales 
-- task 2
select *,dense_rank() over (order by Quantity) as reyting from ProductSales
-- task 3
select * from (select *,rank()over (partition by CustomerID order by SaleAmount desc) as sotuvreyting from ProductSales) dt
where sotuvreyting =1
-- task 4
select *,lead(SaleAmount)over (order by SaleDate) from ProductSales
-- task 5
select *,lag(SaleAmount)over (order by SaleDate) from ProductSales
-- task 6
select * from (select SaleID,ProductName,SaleDate,SaleAmount, lag(SaleAmount)over (order by SaleDate) farq from ProductSales) as dt
where SaleAmount>farq
-- task 7
select dt.SaleID,dt.ProductName,dt.SaleAmount,dt.oldingisotuv,dt.SaleAmount-dt.oldingisotuv as farqsotuv 
from (select *,isnull(lag(SaleAmount) over (partition by ProductName order by ProductName),SaleAmount) oldingisotuv from ProductSales) dt
-- task 8
select dt.SaleID,dt.ProductName,dt.SaleAmount,dt.keyingisotuv,round(((keyingisotuv-dt.SaleAmount)/dt.SaleAmount)*100,0) as farqsotuv 
from (select *,isnull(lead(SaleAmount) over ( order by SaleDate),SaleAmount) keyingisotuv from ProductSales) dt
--task 9
select dt.SaleID,dt.ProductName,dt.SaleAmount,dt.mahsulotoldinginarx,round(dt.SaleAmount/dt.mahsulotoldinginarx,2) nisbat
from (select *,lead(SaleAmount) over(partition by ProductName order by SaleDate) mahsulotoldinginarx from ProductSales) as dt
-- task 10
select dt.SaleID,dt.ProductName,dt.SaleDate,dt.SaleAmount,dt.birinchisotuv,dt.SaleAmount-dt.birinchisotuv as farq
from (select *,FIRST_VALUE(SaleAmount) over(partition by ProductName order by SaleDate ) birinchisotuv from ProductSales) dt
-- task 11
with cte as(select *,lag(SaleAmount)over (partition by ProductName order by SaleDate) avvalgisotuv from ProductSales)
select * from cte 
where cte.SaleAmount>cte.avvalgisotuv
-- task 12
select *,sum(SaleAmount) over (order by SaleDate) yigindi from ProductSales
-- task 13
select *,round(avg(SaleAmount)OVER(ORDER BY SaleDate rows between 2 preceding and current row),2) as ortacha from ProductSales
-- task 14
select dt.SaleID,dt.ProductName,dt.SaleDate,dt.SaleAmount,dt.ortachasotuv,dt.SaleAmount-dt.ortachasotuv as farq
from (select *,avg(SaleAmount)over() ortachasotuv from ProductSales) as dt
-- task 15
with darajajadval as(select *,RANK()over (order by Salary desc) daraja from Employees1)
select daraja,Name,Salary from darajajadval 
where daraja in(select daraja from darajajadval group by daraja having count(*)>1 )
order by daraja
-- task 16
select * from (select *,DENSE_RANK()over (partition by Department order by Salary desc ) reyting from Employees1) dt
where reyting<=2
-- task 17
select * from (select *,DENSE_RANK()over (partition by Department order by Salary ) reyting from Employees1) dt
where reyting =1
-- task 18
select *,sum(salary)over(partition by Department order by Salary ) ketmaketmoshyigindi from Employees1
-- task 19
select distinct dt.Department,dt.umumiyoylik from (select *,sum(Salary) over(partition by Department ) umumiyoylik from Employees1) dt


select distinct e1.Department,(select sum(Salary) from Employees1 e2  where e2.Department=e1.Department) umumiyoylik from Employees1 as e1
-- task 20
select distinct dt.Department ,dt.ortachaoylik from  (select *,round(avg(salary) over (partition by Department),2) ortachaoylik from Employees1) dt

select *,(select sum(salary) from Employees1 e2 where e1.Department=e2.Department) as  ortachaoylik from Employees1  as e1
-- task 21
select dt.EmployeeID,dt.Name,dt.Department,dt.Salary,dt.ortacha,round(dt.Salary-dt.ortacha,2) farq
from (select *,AVG(Salary)over (partition by Department) ortacha from Employees1) dt

select e2.EmployeeID,e2.Name,e2.Department,e2.salary-(select avg(Salary)from Employees1 e1 where e1.Department=e2.Department) farq from Employees1 e2
-- task 22
select *,avg(salary) over (order by EmployeeID rows between 1 preceding and 1 following  ) ortacha from Employees1
-- task 23
select sum (Salary) as salary from (select top 3 Salary from Employees1 order by HireDate desc) as lastworker

select sum (Salary) from (select *,ROW_NUMBER()over (order by HireDate desc) reyting  from Employees1 ) dt 
where dt.reyting<=3



















