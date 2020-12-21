select first_name, department_name
from employees, departments;

select first_name, em.department_id,
        department_name, de.department_id

from employees em, departments de
where em.department_id = de.department_id;


select *
from employees, departments;



select *
from employees, departments
where employees.department_id = departments.department_id;


select *
from employees em, departments d
where em.department_id = d.department_id;





select first_name||'-'||last_name,
        department_name,
        j.job_title
from employees em, jobs j, departments de
where em.department_id = de.department_id and j.job_id = em.job_id;


select first_name,
        last_name,
        e.department_id

from employees e left outer join departments d
    on e.department_id = d.department_id;


select *
from employees em left outer join departments d
    on em.department_id = d.department_id;

select *
from employees em right outer join departments d
        on em.department_id = d.department_id;





select *
from employees em, departments de
where em.department_id = de.department_id;

select * 
from employees em left outer join departments de
     on em.department_id = de.department_id;

select *
from employees em right outer join departments de
    on em.department_id = de.department_id;
    

select *
from employees em, departments de
where em.department_id(+) = de.department_id;
    
select *
from employees em full outer join departments de
    on em.department_id = de.department_id;


select emp.employee_id, emp.first_name,
        emp.manager_id, man.first_name as manager

from employees emp, employees man
where emp.manager_id = man.employee_id;


