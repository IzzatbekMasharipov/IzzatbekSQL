
homework 22
--task 1

select *,sum(total_amount) over (order by customer_id) umumiysavdoyigindisi from sales_data
--task 2
select *,sum(quantity_sold)over(partition by product_category) from sales_data


select product_category,sum(quantity_sold) from sales_data group by product_category
-- task 3
select *,max(total_amount)over (partition by product_category) from sales_data

select product_category,max(total_amount) from sales_data group by product_category
-- task 4
select *,min(unit_price)over(partition by product_category) from sales_data

select product_category,min(unit_price) from sales_data group by product_category

-- task 5
select *,round(avg(total_amount)over(order by order_date rows between 1 preceding   and 1 following ),2) ortacha from sales_data

-- task 6
select *,sum(total_amount)over(partition by region) from sales_data

select region,sum(total_amount) from sales_data group by region
-- task 7
select customer_id,sum(total_amount) umumiysavdo,DENSE_RANK()over(order by sum(total_amount) desc)reyting from sales_data group by customer_id
-- task 8
select dt.customer_id,dt.total_amount,dt.oldingisavdo,dt.total_amount-dt.oldingisavdo as farq
from (select*,isnull(lag(total_amount)over(partition by customer_id order by order_date),total_amount) oldingisavdo from sales_data) as dt
-- task 9
select * from (select *,DENSE_RANK() over (partition by product_category order by unit_price desc) reyting from sales_data) dt
where dt.reyting<=3
-- task 10
select *,sum(total_amount)over(partition by region order by order_date) from sales_data

--task 11

select *,sum(total_amount)over(partition by product_category order by order_date) from sales_data
-- task 12


select *,sum(id)over(order by id) SumPreValues from table1
-- task 13
select *,sum(Value)over(order by Value rows between 1 preceding and current row) SumofPrevious from OneColumn 

-- task 14
select customer_id,customer_name,
count(distinct product_category) natija
from sales_data
group by customer_id,customer_name
having count(distinct product_category)>1
-- task 15

with cteortacha as (select region,avg(total_amount) avgtotal_amount from sales_data 
group by region),
cteumumiy as (select customer_id,customer_name,region ,sum(total_amount) sumtotal_amount from sales_data
group by customer_id,customer_name,region )
select * from cteumumiy c1 join cteortacha c2 on c1.region=c2.region
where c1.sumtotal_amount>c2.avgtotal_amount
--task 16

with cte as(select customer_id,customer_name,region,sum(total_amount) summa from sales_data group by customer_id,customer_name,region)
select customer_id,customer_name,region,summa,DENSE_RANK() over(partition by region order by summa desc) reyting from cte
order by region,reyting
-- task 17
select *,sum(total_amount)over(partition by customer_id order by order_date) from sales_data

-- task 18
select dt.order_date,dt.total_amount,dt.otganoy,round((dt.total_amount-dt.otganoy)/dt.otganoy*100,2) farq
from (select *,lag(total_amount)over(order by order_date) otganoy from sales_data) dt
-- task 19
select * from (select *,lag(total_amount)over(partition by customer_id order by order_date ) as oldingioy from sales_data) dt
where dt.total_amount>dt.oldingioy
-- task 20
select * from sales_data where unit_price > (select AVG(unit_price) from sales_data)
-- task 21
select *,
case when ROW_NUMBER() over (partition by Grp order by (select null))=1
then sum(Val1+Val2)over(partition by Grp) end as Tot
from mydata
-- task 22
select ID,sum(Cost) as Cost,
case when count(distinct Quantity)=1 then MAX(Quantity) else SUM(Quantity) end as Quantity


from TheSumPuzzle group by ID






















