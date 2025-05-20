--uyga vazifa
--task 1

select Category,count( *) from Products group by Category

--task 2

select AVG(case when Category='Electronics' then Price else Null end) from Products
-- task 3

select * from Customers
where City like 'L%'
-- task 4

select *from Products
where ProductName like '%er'
-- task 5
Select *from Customers
 where Country like '%A'
 -- task 6
select ProductName,Price from Products
where Price=( select  MAX(Price) from Products)
--task 7
select *,
case when  StockQuantity>30 then 'Sufficient' else 'Low Stock' end
from Products
-- task 8
Select Country,count(*)  from Customers group by Country
-- task 9
select MIN(Quantity) as MIN_Quantity,MAX(Quantity) as MAX_Quantity  from Orders
-- task 10
select distinct Orders.CustomerID
from Orders
Left join Invoices on Orders.OrderID=Invoices.CustomerID
where Orders.OrderDate Between '2023-01-01' and '2023-01-31' and InvoiceID is null
-- task 11
select ProductName from Products
union all
select ProductName from Products_Discounted
-- task 12
select ProductName from Products
union 
select ProductName from Products_Discounted
-- task 13
select * from Orders
select YEAR(OrderDate),avg(Quantity) from Orders group by YEAR(OrderDate)
-- task 14
select *,
case when Price<100 then 'Low'
when Price>100 and Price<500 then 'Mid' else
'High' end 
from Products
-- task 15
select * from City_Population

select [2012],[2013] from
(select population,year from City_Population) as derived_table
pivot
(sum(population) for year in([2012],[2013])) as Population_Each_Year

-- task 16
select ProductID,sum(SaleAmount) from Sales group by ProductID
-- task 17
select ProductName from Products
where ProductName like '%oo%'
-- task 18

select [Chilonzor],[Yakkasaroy],[Mirabod],[Yashnabod],[Bektemir] from
(select district_name,population,year from city_population)as derived_table
pivot
(sum(population) for district_name in ( [Chilonzor],[Yakkasaroy],[Mirabod],[Yashnabod],[Bektemir])) as pivot_table
--task 19
select top 3 CustomerID,sum(TotalAmount)  from Invoices group by CustomerID order by CustomerID desc
--task 20
select district_name,year,population from Population_Each_year
--task 21
select Products.ProductName,count(Sales.SaleID)
from Products
join Sales on Products.ProductID=Sales.ProductID

group by ProductName
-- task 22
select district_name,year,population from Population_Each_year
