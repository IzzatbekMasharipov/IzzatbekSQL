


--task 1

select * from #Sales s1 where exists (select 1 from #Sales s2  where s1.SaleID=s2.SaleID and month(SaleDate)=3 and YEAR(SaleDate)=2024)
--task 2
select * from #Sales where SaleID = (select top 1 SaleID from #Sales group by SaleID order by MAX(Quantity*Price) desc)
-- task 3
select * from #Sales where SaleID = (select  SaleID from #Sales group by SaleID order by MAX(Quantity*Price) desc offset 1 rows fetch next 1 rows only )
-- task 4
select saledate,totalquantity from (select month(SaleDate) as saledate,sum(Quantity) as totalquantity from #Sales 
group by month(SaleDate)) as dt 
-- task 5
select distinct s1.CustomerName from #Sales s1 where s1.CustomerName<>'Alice' and exists (select 1 from #Sales s2 where s2.CustomerName='Alice' and s1.Product=s2.Product )
-- task 6
select * from Fruits
with cte as (select Name,count(*) Apple from Fruits 
where Fruit='Apple' 
group by Name),
cte2 as (select Name,count(*) Orange from Fruits 
where Fruit='Orange' 
group by Name),
cte3 as (select Name,count(*) Banana from Fruits 
where Fruit='Banana' 
group by Name)
select c1.Name,c1.Apple,c2.Orange,c3.Banana from cte c1 join cte2 c2 on c1.Name=c2.Name join cte3 c3 on c1.Name=c3.Name
-- task 7
select f1.ParentId as  PID,f2.ChildID as CHID from  Family f1 cross join Family f2 where f1.ParentId<f2.ChildID
order by f1.ParentId
-- task 8
select  *  from #Orders where CustomerID in (select CustomerID from #Orders where DeliveryState='CA') and DeliveryState='TX'

-- task 9

select *,case when charindex(fullname,address)>0 then address else 
stuff(address,len(address)+1-charindex(' ',reverse(address)),0,+' name='+fullname) end as toldirilganqism from #residents
--task 10

with cte as (select DepartureCity,ArrivalCity,
cast(DepartureCity+' > '+ArrivalCity as varchar(max)) as yonalish,
cost from #Routes 
where  DepartureCity='Tashkent'

union all

select c.DepartureCity,r.ArrivalCity,
CAST(c.yonalish+' > '+ r.ArrivalCity as varchar(max)),
c.cost+r.cost
from #Routes r join cte c on r.DepartureCity=c.ArrivalCity
where c.DepartureCity not like '%'+r.ArrivalCity+'%'),


qimmat as (select top 1 yonalish,cost from cte  
where ArrivalCity='Khorezm'
order by cost desc),
arzon as (
select top 1 yonalish,cost from cte 
where ArrivalCity='Khorezm'
order by cost asc)
select * from qimmat
union all
select * from arzon
order by cost
-- task 11
select * from #RankingPuzzle

with cte as (select *,
sum(case when Vals='Product' then 1 else 0 end) over (order by ID) as mahsulotguruhi
from  #RankingPuzzle)
select Vals,mahsulotguruhi from cte
where Vals<>'Product'
-- task 12
with cte as (select Department,avg(SalesAmount) avgmidlle from #EmployeeSales group by  Department)
select e.EmployeeName,e.Department,e.SalesAmount from cte join #EmployeeSales e on cte.Department=e.Department
where e.SalesAmount>cte.avgmidlle
-- task 13
with cte as (select SalesMonth,max(SalesAmount) max_monthsales from #EmployeeSales group by salesMonth)
select e.EmployeeName,e.Department,e.SalesAmount,e.SalesMonth from cte c join #EmployeeSales e on c.SalesMonth=e.SalesMonth
and e.SalesAmount>=c.max_monthsales

select * from #EmployeeSales e1 where not exists
(select * from #EmployeeSales e2 where e2.SalesMonth=e1. SalesMonth and e1.SalesAmount<e2.SalesAmount)
--task 14
select distinct e.EmployeeName from #EmployeeSales e
where not exists (select 1 from(select distinct SalesMonth from #EmployeeSales) as M
where not exists (select 1 from #EmployeeSales e2 where e.EmployeeName=e2.EmployeeName and e.SalesMonth=e2.SalesMonth)
);
-- task 15
select * from Products where Price>(select avg(Price) from Products)
-- task 16
select * from Products where Stock<(select MAX(Stock) from Products)
-- task 17
select Name from Products where Category = (select Category  from Products where Name='Laptop' )
--task 18
select * from Products where Price > (select  min(Price) from Products where Category='Electronics' )
-- task 19


with cte as(select Category,avg(Price) avgCategory from Products group by Category)
select p.ProductID,p.Name,p.Category,p.Price from cte join Products p on cte.Category=p.Category
where p.Price>cte.avgCategory
-- task 20
select distinct p.ProductID,p.Name from Orders o
join Products p on o.ProductID=p.ProductID
-- task 21
with ortacha as(select avg(Quantity) ortachamiqdor from Orders),
mahsulotumumiysotilish as (select ProductID,sum(Quantity) as umumiysavdo from Orders group by ProductID)
select * from Products p join mahsulotumumiysotilish m on p.ProductID=m.ProductID
join ortacha o on m.umumiysavdo>o.ortachamiqdor
-- task 22
select * from Products p
left join Orders o on p.ProductID=o.ProductID
where o.ProductID is null
-- task 23
with cte as (select ProductID,sum(Quantity) umumiysavdomiqdor from Orders group by  ProductID)
select top 1 p.ProductID,p.Name,p.Price,c.umumiysavdomiqdor from Products p join cte c on p.ProductID=c.ProductID
order by c.umumiysavdomiqdor desc
