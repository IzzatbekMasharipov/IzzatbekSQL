homework--17
--task 1

with cte as(select distinct Region from #RegionSales),
 cte2 as(select distinct Distributor from #RegionSales)
select cte.Region,cte2.Distributor,isnull(r.Sales,0)as Sales from cte cross join cte2 
left join #RegionSales r on  cte.Region=r.Region and cte2.Distributor=r.Distributor

order by cte2.Distributor,cte.Region
--task 2
select e1.name from Employee e1 
 join Employee e2 on e1.id=e2.managerId
 group by e1.name having count(*)>=5
 --task 3


 select p.product_name,sum(o.unit) as unit from Products p
 join Orders  o on p.product_id=o.product_id
 where o.order_date>='2020-02-01' and o.order_date<'2020-03-01'

 group by p.product_name having sum(o.unit)>=100
 order by sum(o.unit) desc
 --task 4
with cte as (select o.CustomerID,max(o.Count)as Count from Orders o
 join Orders o2 on o.CustomerID=o2.CustomerID and o.OrderID=o2.OrderID
 group by o.CustomerID)

 select o.CustomerID,o.Vendor from cte  join Orders o on cte.Count=o.Count

 --task 5
 DECLARE @Check INT = 91;
 declare @i int =2;
 declare @isprime int =1;
 if @check <=1
 set @isprime =0;
 else 
 begin 
 while @i <= @check/2
 begin 
 if @check%@i=0
 begin 
 set @isprime=0;
 break;
 end
 set @i=@i+1;
 end
 end
 if @isprime =1
 print 'bu son tub son'
 else 
 print 'bu son tub son emas'
 --task 6
 select * from Device

with cte as(
select count(distinct locations) dis_locations from Device),
cte2 as (select top 1 Locations,count(*) as rezalt from Device group by Locations
order by count(*) desc
),
cte3 as (select device_id,count(*) total_signal from device group by device_id)
select *from cte cross join cte2 cross join cte3
-- task 7
with cte as (select deptID,avg(salary) avg_salary from Employee group by deptID)
select e.EmpID,e.EmpName,e.Salary from cte join Employee e on cte.deptID=e.deptID
where e.Salary-cte.avg_salary>=0
-- task 8



select 
sum(case
when mosraqamlarsoni=3 then 100
when mosraqamlarsoni>0 then 10
else 0 end)
totalwinnings

from

(select ticketid,count(*) mosraqamlarsoni
from ticketNumber t
join numbers n on t.number=n.number
group by ticketid) chiptabahosi
--task 10

with cte as(
select product,Quantity,1 as n
from Grouped where Quantity>0
union all
select product,Quantity,n+1
from cte where Quantity>=n+1)
select product from cte
order by  product

