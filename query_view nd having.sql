SELECT * FROM public.employee
ORDER BY emp_id ASC 
select * from company
--view
create view company_employee as
select c.dept_name,sum(e.salary),count(e.dept_no) from company as c
inner join employee as e
on c.dept_no=e.dept_no
group by c.dept_name

select * from company_employee
INSERT INTO company_employee (dept_name,salary,dept_no) values ('head',600000,1)---giving error 



--without join
select * from company
	
create view company_view as
select dept_no,dept_name,location from company
select * from company_view

--insert
insert into company_view(dept_no,dept_name,location)values(21,'head','hong kong')

--update
update company_view set dept_name = 'sales' where dept_no = 21

--alter
alter view company_view add column total_employees double precision  -- error

--delete
delete from company_view where dept_no = 21


--having
select * from sales
select* from customer
select* from product

select customer_id,sum(sales),(select customer_name from customer as c where c.customer_id=s.customer_id)from sales as s
group by customer_id having sum(sales)>600

