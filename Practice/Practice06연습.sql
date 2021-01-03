--1.
select first_name,
        manager_id,
        commission_pct,
        salary
from employees
where manager_id is not null and commission_pct is null and salary > '3000';

--2.
select employee_id,
        first_name,
        salary,
        to_char(hire_date, 'yyyy-mm-dd day'),
        phone_number,
        department_id
from employees
where (department_id, salary) in (select department_id, max(salary)
                                  from   employees
                                  where department_id is not null
                                  group by department_id)
order by salary desc;

select department_id, max(salary)
from employees
where department_id is not null
group by department_id;

--3.

select distinct man.employee_id,
       man.salary,
       man.first_name
       
from employees em, employees man
where em.manager_id = man.employee_id;


select round(avg(em.salary),0)
from (select distinct man.employee_id,
                        man.salary,
                        man.first_name,
                        man.hire_date
        from employees em, employees man
        where em.manager_id = man.employee_id) em;
--where em.hire_date > '04.12.31';

select *
from departments;

--4.






                                        




--5.
select employee_id,
        first_name,
        department_name,
        salary,
        em.hire_date
from   employees em, (select  rownum r,
                             hire_date
                      from (select 
                         hire_date
                     from employees
                     order by hire_date asc)
                      ) ro, departments de
where  em.department_id = de.department_id and 


select rank() over(order by hire_date asc),
       hire_date

from employees;



select   hire_date
(select  rownum r,
         hire_date
from (select 
             hire_date
      from employees
      order by hire_date asc)
) ro;
where ro.r >'10' and ro.r < '21';





select   hire_date
from    (select  rownum r,
                 hire_date
        from (select 
                      hire_date
              from employees
              order by hire_date asc)
) ro
where ro.r > '10' and ro.r < '21';



