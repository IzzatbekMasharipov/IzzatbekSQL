homework 18
--task 1
create table #MonthlySales(ProductID int,TotalQuantity int,TotalRavenue int)
insert into #MonthlySales

select p.ProductID,sum(s.Quantity) as total_Quantity,sum(s.Quantity*p.Price) as total_Ravenue from  Products p join
Sales s on p.ProductID=s.ProductID
where MONTH(s.SaleDate)=4 and YEAR(s.SaleDate)=2025
group by p.ProductID
-- task 2
create view vw_ProductSalesSummary
as
select p.ProductID,p.ProductName,p.Category,sum(s.Quantity) as TotalQuantity from Products p 
join Sales s on p.ProductID=s.ProductID
group by p.ProductID,p.ProductName,p.Category

select * from vw_ProductSalesSummary
-- task 3


create function fn_GetTotalRevenueForProduct(@ProductID INT)
returns decimal (18,2)
as 
begin
declare @ravenue decimal (18,2)
select @ravenue=sum(s.Quantity*p.Price)
from Products p join Sales s on p.ProductID=s.ProductID
where p.ProductID=@ProductID
return isnull( @ravenue,0)

end
select dbo.fn_GetTotalRevenueForProduct(2) as Totalravenue
--task 4
select * from Products

select * from Sales

create function fn_GetSalesByCategory(@Category VARCHAR(50))
returns table
as
return
(
select p.ProductName,sum(s.Quantity) as TotalQuantity,
sum(s.Quantity*p.Price) as TotalRevenue from
Products p join Sales s on p.ProductID=s.ProductID
where p.Category=@Category
group by p.ProductName
);
select* from dbo.fn_GetSalesByCategory('Electronics')
-- task 5
Create function dbo.fn_IsPrime (@Number INT)
Returns varchar(5)
as 
begin
declare @i int =2
if @number<2
return 'no'
while @i*@i<=@number
begin
if @number%@i=0
return 'no'
set @i=@i+1
end
return 'yes'
end;
select dbo.fn_IsPrime(10) as natija
-- task 6
create function son_qaytar (@Start INT,@End INT)
returns  @Numbers table   (Number int)
as 
begin
declare @current int =@Start
while @current<=@End
begin
insert into @Numbers(Number) values(@current)
set @current=@current+1;
end
return;
end;

select * from son_qaytar(2,9)
--task 7
create table Employee(id int,Salary int)
insert into Employee values(1,100),(2,200),(3,300)
select * from Employee
create function fn_getNthHighestSalary(@n int)
returns int
as begin
declare @result int;
select @result=min(Salary)
from (
select distinct Salary from Employee
order by Salary desc
offset (@n-1) rows fetch next 1 rows only )
as RankedSalaries
return @result;
end;
select dbo.fn_getNthHighestSalary(4)
--task 8



select top 1 id,count(*) as num from
(select requester_id as id,accepter_id as num
from RequestAccepted
union all
select accepter_id as id,requester_id as num
from RequestAccepted) as dt
group by id
order by count(*) desc

--task 9
create view vw_CustomerOrderSummary
as
select c.customer_id,c.name,count(o.order_id) totalorder,sum(o.amount) as totalamount,max(o.order_date) lastorderdate from customers c
join orders o on c.customer_id=o.customer_id
group by c.customer_id,c.name

select * from vw_CustomerOrderSummary
-- task 10
WITH FilledWorkflows AS (
    SELECT 
        RowNumber,
        TestCase,
        MAX(TestCase) OVER (ORDER BY RowNumber ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS FilledWorkflow
    FROM Gaps
)
SELECT RowNumber, FilledWorkflow AS Workflow
FROM FilledWorkflows;




