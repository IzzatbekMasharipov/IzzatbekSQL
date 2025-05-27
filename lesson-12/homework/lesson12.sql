--homework 12
--task 1

select p.firsName,p.lastName,a.city,a.state from Person p
left join Address a on p.personID=a.personID
--task 2
select e2.name as Employee from Employee e1
join Employee e2 on e2.managerId=e1.id and e1.salary<e2.salary
--task 3
select email from Person
group by email
having count(*)>1
--task 4
delete table Person
where id=3 and email='john@example.com'
--task 5
select g.ParentName from girls g
left join boys b on g.ParentName=b.ParentName
where b.Id is null
--task 6

 select custid,count(orderid) as total_order,
 min(freight) as min_frihgt from Sales.Orders
 where freight>50
 group by custid
 --task 7
select  cart1.Item, Cart2.Item  from cart1 full join
 cart2 on cart1.Item=Cart2.Item
 order by Cart1.Item desc,Cart2.Item desc
--task 8
select c.name as Customers from Customers c
left join
 Orders o on o.customerId=c.id
 where o.id is null
-- task 9
select s.student_id,s.student_name,sub.subject_name,count(ex.subject_name) as attended_exams from Students s
cross join Subjects sub
left join Examinations  ex on ex.student_id=s.student_id and sub.subject_name=ex.subject_name
group by  s.student_id,s.student_name,sub.subject_name
order by s.student_id,s.student_name
