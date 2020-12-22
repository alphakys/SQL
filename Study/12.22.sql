

select salary
        first_name
from employees
where first_name = 'Den';

select employee_id, first_name,
        salary
from employees
where salary > (select salary
                from employees
                where first_name = 'Den');
                
                
                
select first_name,
        salary,
        employee_id
from employees

where salary = (select min(salary)
                from employees);
                
                

select first_name,
        salary
from employees
where salary < (select avg(salary)
                from employees);


select employee_id,
        first_name,
        salary

from employees
where salary in (select salary
                from employees
                where department_id = 110);

select department_id, first_name, salary
from employees
where department_id = 110;

select department_id,
        first_name,
        salary
from employees
where (department_id, salary) in (select department_id, max(salary)
                    
                                    from employees
                                    group by department_id
                                                            );     


select employee_id,
        first_name, salary,
        department_id
from employees
where salary >any (select salary
                from employees
                where department_id = '110');

select first_name,salary
from employees
where salary >all (select salary
                    from employees
                    where department_id='110');


select first_name, employee_id
from employees
where (department_id, salary) in (select department_id,max(salary)
                                  from employees
                                  group by department_id
                                                    );


select e.department_id, e.employee_id, e.first_name, e.salary
from employees e, (select department_id, max(salary) salary
                  from employees
                  group by department_id) s
                  
where e.department_id = s.department_id and e.salary = s.salary;



           