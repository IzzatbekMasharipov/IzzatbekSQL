create database lesson19
use lesson19
select * from  Employees 
select * from  DepartmentBonus 

create proc getemployee
as 
begin
create table #EmployeeBonus(EmployeeID int,FullName nvarchar(100),Department nvarchar(100),Salary decimal(18,2),BonusAmount decimal (18,2))
insert into #EmployeeBonus (EmployeeID ,FullName ,Department,Salary,BonusAmount)
select 


 e.EmployeeID,(e.FirstName+ ' '+e.LastName) as FullName,d.Department,e.Salary,(e.Salary*d.BonusPercentage)/100 as BonusAmount from  Employees e
join   DepartmentBonus d on e.Department=d.Department
select * from #EmployeeBonus
end;
exec getemployee
-- task 2
select * from Employees
create proc updatedepartmentsalaries
 @departmentname nvarchar(100),
 @foiz decimal (5,2)
 as 
 begin
 update Employees
 set Salary=Salary+(1+@foiz/100)
 where Department=@departmentname

 select *  from Employees
 where department=@departmentname


 end;
 exec updatedepartmentsalaries Sales,10
 -- task 3
 select * from Products_Current
 select * from Products_New

 merge into Products_Current as target
 using Products_New AS source 
 on target.ProductID=source.ProductID
 --agar product mos kelsa yangilash
 when matched then 
 update set 
 target.ProductName=source.ProductName,
 target.Price=source.Price
 --agar Product_currentda yoq bolsa mahsulot qo'shish
 when not matched by target then
 insert (ProductID,ProductName,Price) values(Source.ProductID,source.ProductName,source.Price)
 --agar products_newda yuq bolsa Product_carrendan ochirish
 when not matched by source then
 delete;
-- yakuniy natija chiqarish
select * from Employees
-- task 4
select distinct t1.id,
case when t1.p_id is null then 'Root'
when t2.id is null then 'Leaf' else 'Inner' end as type
from   Tree t1
left join Tree t2 on t1.id=t2.p_id
-- task 5

select s.user_id,
round (case when totalaction=0 or totalaction is null  then 0
when tasdiqlash =0 or tasdiqlash is null  then 0
else tasdiqlash*1.0/totalaction end,1) as confirmation_rate
from Signups s

left join(
select user_id,count(*) as totalaction,
sum(case when action='confirmed' then 1 else 0 end) as tasdiqlash
from Confirmations
group by user_id) dt
on s.user_id=dt.user_id
-- task 6
select * from Employees
where salary=(select min(salary) from Employees)
-- select 7

select* from Products 
    

select *  from Sales 
 create proc GetProductSalesSummary (@ProductID int)
 as 
 begin
 select p.ProductName,
 sum(s.Quantity) as totalQuantity,
 sum(s.Quantity*p.Price) as totalPrice,
 min(s.SaleDate) as firstsale,
 max(s.SaleDate) as lastsale 
 from Products p
 join Sales s on p.ProductID=s.ProductID
 where p.productID=@ProductID
 group by p.ProductName

 end;


