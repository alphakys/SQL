--1.
select  count(salary)
from employees
where salary < (select  avg(salary)
                from    employees);
                
--2.
select   employee_id,
         first_name,
         salary
from employees
where salary >= (select  avg(salary) from    employees)                 
and salary <= (select  max(salary) from    employees);


--3.
select   de.location_id,
         street_address,
         postal_code,
         city,
         state_province,
         country_id
from     locations l,(select department_id
                      from employees
                      where first_name||last_name = 'StevenKing') emFor,
         departments de                           
where  emFor.department_id = de.department_id and de.location_id = l.location_id;

select  employee_id
from employees
where first_name||last_name = 'StevenKing';


--4.
select   employee_id,
         first_name,
         salary
from employees 
where salary <ANY (select  salary 
                    from   employees
                    where job_id = 'ST_MAN');


select  salary from   employees where job_id = 'ST_MAN';


--5.
--조건절
select  employee_id,
        first_name,
        em.salary,
        em.department_id
from employees em
where (salary, department_id) in (select  max(salary), department_id
                                 from  employees
                                 where department_id is not null
                                 group by department_id)
order by em.salary desc;

--join절
select  employee_id,
        first_name,
        em.salary,
        em.department_id
from employees em inner join (select  max(salary) msalary, department_id
                                 from  employees
                                 where department_id is not null
                                 group by department_id) emFor
on em.salary = emfor.msalary and em.department_id = emFor.department_id
order by em.salary desc;

/*
select  employee_id,
        salary
from  employees
where (salary, department_id) in (select max(salary), department_id
                                 from employees 
                                 group by department_id) and department_id is not null;
*/

--6.
select distinct job_id
from employees;

select  sum(salary) sumsal,
                                job_id
                                from employees
                                group by job_id
                                order by sum(salary) desc;
-----------------------------------------------------------        
select  job_title,
        emfor.sumsal
from jobs j inner join (select  sum(salary) sumsal,
                                job_id
                                from employees
                                group by job_id
                                order by sum(salary) desc) emFor
on   j.job_id = emFor.job_id
order by emFor.sumsal desc;

--7.
select   employee_id,
         first_name,
         salary
from     employees em, (select department_id, avg(salary) avgsal
                        from employees
                        where department_id is not null
                        group by department_id) emFor
where    em.department_id = emFor.department_id and em.salary > emfor.avgsal;


select   avg(salary),
         department_id
from employees
where department_id is not null
group by department_id;

--8.
select rank() OVER (ORDER BY hire_date asc) R
       
from employees
where R > 10 and R < 16;

select employee_id
from employees
where 







