-- homevork
--task 1
select SUBSTRING(Name,1,charindex(',',Name)-1) as Name,
SUBSTRING(Name,charindex(',',Name)+1,LEN(Name)) as Surname
from TestMultipleColumns
--task 2
select * from TestPercent
where Strs like '%*%%' escape '*'
--task 3


select * from  Splitter cross apply string_split(Vals,'.')
-- task 4

select TRANSLATE('1234ABC123456XYZ1234567890ADS','0123456789','XXXXXXXXXX')

-- TASK 5
select * from testDots
where len(Vals)-len(replace(Vals,'.',''))>2
-- task 6
select len(texts)-len(replace(texts,' ','')) natija  from CountSpaces
-- task 7
 select e2.Name,e2.Salary from Employee e1
 join Employee e2 on e2.ManagerID=e1.id and e1.Salary<e2.Salary
 -- task 8
 select FIRST_NAME,LAST_NAME, datediff(YEAR,HIRE_DATE,GETDATE()) from Employees
 WHERE datediff(YEAR,HIRE_DATE,GETDATE()) BETWEEN 11 AND 14 
--Medium Tasks
--TASK 1
SELECT 
    column_name,
    LEFT(column_name, PATINDEX('%[0-9]%', column_name) - 1) AS character_values,
    SUBSTRING(column_name, PATINDEX('%[0-9]%', column_name), LEN(column_name)) AS integer_values
FROM table_name;
-- task 2
select w1.ID from weather w1
join weather w2 on w1.RecordDate=dateadd(day,1,w2.RecordDate)
where w1.Temperature>w2.Temperature
--task 3
select player_id,min(event_date)  from Activity
group by player_id
--task 4


select substring(fruit_list,charindex('orange',fruit_list),len('orange')) from fruits

--task 5
SELECT SUBSTRING('sdgfhsdgfhs@121313131', Number, 1) AS char
FROM master.dbo.spt_values
WHERE Number BETWEEN 1 AND LEN('sdgfhsdgfhs@121313131') AND type = 'P';
--task 6
select p1.id,
case when p1.code=0 then p2.code else p1.code end

from P1
join P2 on p1.id=p2.id
-- task 7

select hire_date,
case when datediff(year,hire_date,getdate())<1 then 'Yangi xodim'
     when datediff(year,hire_date,getdate())<5 then 'orta darajadagi xodim' else 'tajribali xodim' end
from Employees


Difficult Tasks
-- task 1
select  concat_ws(',',
 substring(vals,3,1),substring(vals,1,1),substring(vals,5,1))
 from MultipleVals
 -- task 2
 select player_id,min(event_date) from Activity group by player_id
 
