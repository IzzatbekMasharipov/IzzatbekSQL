-- uyga vazifa
-- task 1
select distinct
case when col1<col2 then col1 else col2 end,
case when col1>col2 then col1 else col2 end
from InputTbl
--task 2
select * from TestMultipleZero
where A+B+C+D>=1
--task 3
select *from section1
where id%2=1
--task 4
select top 1 *from section1 order by id asc
-- task 5
select top 1 *from section1 order by id desc
-- task 6
select * from section1
where name like 'b%'
-- task 7
select * from ProductCodes
where Code like '%\_%' escape '\'
