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
select em.employee_id,
        em.first_name "직원",
        department_name,
        em.manager_id,
        man.first_name "매니저"
from employees em left outer join
                  departments de
on em.department_id = de.department_id
                 left outer join employees man
on em.manager_id = man.employee_id;


                                        




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

--6.
select first_name||' '||last_name,
        salary,
        hire_date,
        department_name
from   employees em, departments de
where hire_date in (select  max(hire_date) from employees) and
      em.department_id = de.department_id;

--7.

select  employee_id,
        first_name,
        last_name,
        job_title,
        salary
from employees em, jobs j
where department_id = (select department_id

                        from (select  rank() over(order by avg(salary) desc) r,
                                    department_id,
                                    avg(salary)
                        from employees
                        group by department_id
                        having department_id is not null) R
                        where R.r='1') 
and em.job_id = j.job_id;
/*
select  rank() over(order by avg(salary) desc),
        department_id,
        avg(salary)
from employees
group by department_id
having department_id is not null;
*/

--8.
select  department_name
from  departments de
where
de.department_id = (select    department_id
                    from      (select rank() over(order by avg(salary) desc) r,
                                        department_id
                                from employees 
                                group by department_id
                                having department_id is not null)
                    where r='1');

--9.
select country_id
from locations
where location_id=(select location_id
from departments
where department_id = (select department_id
                        from   (select rank() over(order by avg(salary) desc) r,
                        department_id
                        from employees
                        group by department_id)
                        where r='1'));

--10.
select first_name
from employees
where job_id in (select job_id
                from   jobs 
                where job_title = 'Administration Vice President');

select job_title
from jobs
where job_id = (select job_id
from
(select  rank() over (order by avg(salary) desc) r,
        job_id,
        avg(salary)
from employees
group by job_id)
where r='1');




















