-- homework 13
--TASK 1
select * from Employees
select LEFT(EMPLOYEE_ID,LEN(EMPLOYEE_ID))+'-'+ LEFT(FIRST_NAME,LEN(FIRST_NAME))+' '+ LEFT(LAST_NAME,LEN(LAST_NAME)) AS FULL_NAME FROM Employees
--TASK 2

UPDATE Employees
SET PHONE_NUMBER=REPLACE(PHONE_NUMBER,'124','999')
from Employees
-- TASK 3
select FIRST_NAME AS NAME,LEN(FIRST_NAME) AS LEN_NAME from Employees
WHERE FIRST_NAME LIKE 'A%' OR FIRST_NAME LIKE 'J%' OR FIRST_NAME LIKE 'M%' 
ORDER BY FIRST_NAME
--TASK 4
SELECT MANAGER_ID,SUM(SALARY) TOTAL_SALARY FROM Employees
GROUP BY MANAGER_ID
--TASK 5
SELECT 
case when Max1>=Max2 and Max1>=Max3 then Max1
     when Max2>=Max1 and Max2>=Max3 then Max2
	 else Max3 end highest

FROM TestMax
--task 6
select * from cinema
where id%2=1 and description<>'boring'
--task 7

select * from SingleOrder
order by(case when id=0 then 1 else 0 end), id 
-- task 8
select coalesce(ssn,passportid,itin) from person
Medium Tasks
--task 1

select *, SUBSTRING(FullName,1,CHARINDEX(' ',FullName)-1)  as First_Name,
          SUBSTRING(FullName,CHARINDEX(' ',FullName)+1,
		  CHARINDEX(' ',FullName,CHARINDEX(' ',FullName)+1)
		  -CHARINDEX(' ',FullName)-1) as MidlleName,
		  SUBSTRING(FullName,CHARINDEX(' ',FullName,CHARINDEX(' ',FullName)+1),len(FullName)) Last_Name
		  

from Students 

--task 2
select * from Orders
where DeliveryState='TX' and
CustomerID in(select CustomerID from Orders
where DeliveryState='CA')

--task 3
select String_agg(String,'  ') from DMLTable

-- task 4
select concat(FIRST_NAME,' ',LAST_NAME) AS FULL_NAME from Employees
WHERE concat(FIRST_NAME,' ',LAST_NAME) LIKE '%a%a%a%'
--task 5
select DEPARTMENT_ID,COUNT(*) TOTAL_EMPLOYEES,
SUM(CASE WHEN DATEDIFF(YEAR,HIRE_DATE,GETDATE())>3 THEN 1 ELSE 0 END)*100/COUNT(*)
from Employees
GROUP BY DEPARTMENT_ID
--task6
SELECT JobDescription,
MAX(MissionCount) as MOSTEXPERIENCED, 
MIN((MissionCount) AS LEASTEXPERIENCED
 from Personal
GROUP BY JobDescription
Difficult Tasks
--task 1
WITH SplitChars AS (
    SELECT 
        SUBSTRING('tf56sd#%OqH', number, 1) AS CharValue
    FROM master.dbo.spt_values
    WHERE type = 'P' AND number BETWEEN 1 AND LEN('tf56sd#%OqH')
)
SELECT 
    STRING_AGG(CASE WHEN CharValue LIKE '[A-Z]' THEN CharValue ELSE '' END, '') AS UppercaseLetters,
    STRING_AGG(CASE WHEN CharValue LIKE '[a-z]' THEN CharValue ELSE '' END, '') AS LowercaseLetters,
    STRING_AGG(CASE WHEN CharValue LIKE '[0-9]' THEN CharValue ELSE '' END, '') AS Numbers,
    STRING_AGG(CASE WHEN CharValue NOT LIKE '[A-Za-z0-9]' THEN CharValue ELSE '' END, '') AS SpecialCharacters
FROM SplitChars;
--task 2
SELECT StudentID, FullName, Grade, 
       (SELECT SUM(Grade) FROM Students s2 WHERE s2.StudentID <= s1.StudentID) AS CumulativeGrade
FROM Students s1;


