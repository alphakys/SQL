select salary,
        
        hire_date,
        first_name,
        last_name,
        phone_number
from employees;

select * from departments;

SELECT first_name,
       salary,
       salary*12
    
FROM employees;

SELECT first_name,
       salary as ����,
       salary*12 as ����,
       (salary+300)*12    
    
FROM employees;

select first_name
from employees 
where department_id = 10;

select first_name,
       hire_date
from employees
where hire_date >= '07.01.01';

select salary,first_name

from employees
where first_name = 'Lex';






