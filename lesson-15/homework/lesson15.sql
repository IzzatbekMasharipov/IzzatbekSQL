--TASK 1
SELECT * FROM EMPLOYEES WHERE salary in  (SELECT MIN(SALARY) FROM EMPLOYEES)
--task 2
select * from products where price > (select avg(price)  from products  )
-- task 3


select * from departments join employees on departments.id=employees.department_id
where departments.department_name='Sales'

select name from employees where department_id = any (select id from departments where department_name = 'Sales')
-- task 4


select * from customers where customer_id not in (select customer_id from orders )
-- task 5


select* from products p1 where price = (select  max(price) from products p2 where p1.category_id=p2.category_id)
-- task 6


select* from employees e1

join departments d on d.id=e1.department_id and salary>=(select avg(salary) from employees);
-- task 7
select * from employees e1   where e1.salary >  (select  avg(salary) from employees where department_id=e1.department_id) 

-- task 8

select *  from grades g 
join students s on s.student_id= g.student_id


where grade in (select max(grade) from grades where course_id=g.course_id)
-- task 9



select * from products p where p.price = (select p2.price from products p2 where p.category_id=p2. category_id order by p2.price desc offset 2 rows fetch next 1 row only)

-- task 10
select * from employees e  where e.salary >(select avg(salary) from employees) and e.salary < (select max(e2.salary) from employees e2 where e.department_id=e2.department_id) 

