
homework 23
-- task 1
select *,RIGHT('0'+CAST(month(DT) as varchar(max)),2) MonthPrefixedWithZero from Dates
-- task 2
select count(distinct Id) as Distinct_Ids , rID,sum(maxson) as TotalOfMaxVals
from  (select Id,rID,MAX(Vals) as maxson from Mytabel group by Id,rID) as dt group by  rID
--task 3
select * from TestFixLengths 
where Len(Vals)>=6 and len(Vals)<=10
-- task 4
with cte as (select ID,MAX(Vals) as Vals from TestMaximum group by ID )
select c.ID,t.Item,c.Vals from cte c join TestMaximum t on c.ID=t.ID and c.Vals=t.Vals
order by t.Item
-- task 5
select distinct Id,sum(maxson) as SumofMax from
(select Id,DetailedNumber,MAX(Vals) maxson from SumOfMax group by Id,DetailedNumber) dt
group by Id
-- task 6
select *,
case when a-b<>0 then cast(a-b as varchar) else '' end as OUTPUT
from TheZeroPuzzle 
-- task 7
select SUM(QuantitySold*UnitPrice) totalRevenue from Sales
-- task 8
select  avg(UnitPrice) avgPrice from Sales
-- task 9
select count(*) totaltranzaksiya from Sales
-- task 10
select top 1 product,max(quantitySold) maxsold from Sales group by product
order by max(quantitySold) desc 
-- task 11
select Category,sum(QuantitySold) sumtotal from Sales group by Category
order by sum(QuantitySold)
-- task 12
select Region,sum(QuantitySold*UnitPrice) regionrevenue from Sales group by Region order by sum(QuantitySold*UnitPrice)
-- task 13
select top 1 product ,max(QuantitySold*UnitPrice) totalrevenue from Sales group by  product order by totalrevenue  desc
-- task 14
select *,sum(QuantitySold*UnitPrice)over(order by SaleDate) RunningTotal from Sales
-- task 15
with cte as(select sum(QuantitySold*UnitPrice) umumiysotuv from Sales),
cte2 as (select category,sum(QuantitySold*UnitPrice) as totalrevenue from Sales group by category)
select c2.category,c2.totalrevenue,round((c2.totalrevenue/c.umumiysotuv)*100,2) as foiz from cte c cross join cte2 c2
--task 17
select c.CustomerID,c.CustomerName,s.SaleID,s.Product,s.QuantitySold,s.UnitPrice,s.SaleDate
from Customers c join Sales s on c.CustomerID=s.CustomerID 
 -- task 18
 select c.CustomerID,c.CustomerName from Customers c left join Sales s on c.CustomerID=s.CustomerID
 where s.CustomerID is null
 -- task 19
 select c.CustomerID,c.CustomerName,sum(s.QuantitySold*s.UnitPrice) from customers c join sales s on c.CustomerID=s.CustomerID
 group by c.CustomerID,c.CustomerName
 -- task 20
 select top 1 c.CustomerID,c.CustomerName,sum(s.QuantitySold*s.UnitPrice) daromad from customers c join sales s on c.CustomerID=s.CustomerID
 group by c.CustomerID,c.CustomerName
 order by daromad desc
 -- task 21
  select c.CustomerID,c.CustomerName,sum(s.QuantitySold*s.UnitPrice) daromad from customers c join sales s on c.CustomerID=s.CustomerID
 group by c.CustomerID,c.CustomerName
 -- task 22

select distinct Product  from sales s  join Products p on s.Product=p.ProductName
-- 23
select top 1 ProductName,max(SellingPrice) maxprice from Products group by ProductName order by max(SellingPrice) desc

select ProductID,ProductName,SellingPrice from Products where SellingPrice = (select max(SellingPrice) from Products)
--24
select ProductID,ProductName,SellingPrice from Products p where SellingPrice >(select AVG(SellingPrice) from  Products p2 where p.Category=p2.Category )

