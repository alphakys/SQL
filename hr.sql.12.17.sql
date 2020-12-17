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
       salary as 월급,
       salary*12 as 연봉,
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


select * from employees;
select * from countries;
select manager_id from departments;
select region_name from regions;
select end_date from job_history;
select job_title from jobs;
select country_id from locations;
select last_name, first_name
from employees;
select region_id,region_name
from regions;

select job_id,job_title,max_salary
from jobs;

select salary as 연봉
from employees;
select first_name as 성
from employees;

select last_name as "l-name", first_name as "f-name"
from employees;

select first_name,phone_number, hire_date,salary 
from employees;

select first_name as 이름, phone_number as 전화번호, hire_date as 입사일, salary as 급여
from employees;

select first_name || last_name
from employees;
select first_name ||'-'|| last_name || '''s hire date is ' || hire_date

from employees;

select last_name||'-'|| first_name||'''s salary is '|| salary
from employees;

select first_name||'''s salary+incentive is '|| (salary+300)
from employees;

select phone_number
from employees;


select job_id+12 
from employees;


select first_name||'-'||last_name,salary, salary*12,(salary*12)+5000, phone_number
from employees;


select  first_name ||'-'|| last_name , salary
from employees
where salary>20000;


select first_name||'-'|| last_name, salary
from employees
where salary>15000;

select first_name ||'-'|| last_name, hire_date
from employees
where hire_date > '21/01/01';

select last_name, salary
from employees
where first_name = 'Lex';


--and or
select employee_id
from employees
where salary >1300
and salary <20000;


select first_name||'-'||last_name,salary
from employees
where salary <= 140000
and salary >=17000;


select last_name, hire_date
from employees
where hire_date > '04.01.01'
or hire_date < '05.12.31';



--between
select first_name, salary
from employees
where salary between 10000 and 150000;





-- where<in> ()
select *
from employees
where first_name in ('Lex','Steven');

select first_name
from employees
where last_name in ('L');

select first_name
from employees
where first_name = 'Lex'or
first_name = 'John';

select last_name, salary
from employees
where salary in (2100,3100,4100,5100);

select employee_id
from employees
where salary between 14000 and 15000;

select last_name,first_name
from employees
where salary =10000 or
salary = 15000;


--like

select first_name
from employees
where first_name like 'L%';

select first_name
from employees
where first_name like '%A%b%';

select first_name
from employees
where first_name like '_____';

select first_name,salary
from employees
where first_name like '%am%';

select first_name,salary
from employees
where first_name like '_a%';

select first_name,salary
from employees
where first_name like '___a%';

select first_name,salary
from employees
where first_name like '__a_';

select first_name,
        salary,
        commission_pct,
        (salary*commission_pct)
from employees
where salary between 13000 and 15000;

select first_name, salary, commission_pct
from employees
where commission_pct is not null;

select first_name, salary*commission_pct
from employees
where commission_pct is not null and
salary between 13000 and 15000;


select first_name
from employees
where manager_id is null and
commission_pct is null;

--Primary Key

select title,
       contents,
       write_date
from board
where board_id = 3;


/*
select 절
from 절
where 절
order by 절 --> 정렬
*/

select *
from employees
order by salary desc;

select first_name
from employees
order by first_name desc;

select *
from employees
where salary>9000
order by employee_id desc;

select last_name
from employees
where salary >9000
order by last_name asc;

select salary,
        first_name,
        department_id
from employees
order by department_id asc;

select salary,
        first_name
from employees
where salary >=10000
order by salary desc;

select department_id,
        salary,
        first_name
from employees 

order by department_id asc, salary desc;

select first_name,
        last_name,
        salary
from employees
where salary between 10000 and 14000
order by salary asc, department_id desc;

select first_name,
       salary
from employees
where salary > 10000 and salary<15000
      
order by first_name desc;

select department_id
from employees
where first_name = 'Shelley';

select first_name
from employees
where first_name like '';

select first_name, phone_number, hire_date
from employees;

select first_name, last_name, salary, phone_number
from employees;

select first_name as "이름", last_name as "성", 
        phone_number as "전화번호", email as "이메일",
        hire_date as "입사일" 
from employees;


select first_name ||'-'|| last_name as "한국식 성함"
from employees;


select first_name ||'-'||last_name ||'의 연봉은 '|| salary
from employees;


select first_name ||'-'||last_name ||'의 연봉은 '|| salary*12
from employees;

select department_id||'-'||first_name

from employees;

select first_name, salary
from employees
where salary > 15000;

select first_name, hire_date
from employees
where hire_date > '07/01/01';

select first_name
from employees
where hire_date <'20.10.01';

select first_name, hire_date
from employees
where hire_date >'04.01.01' 
and hire_date < '05.12.31';


select first_name
from employees
where salary in (2100, 3100, 4100, 5100); 


select first_name
from employees
where first_name like '%am%';

select first_name
from employees
where first_name like '_a%';

select first_name
from employees
where first_name like '___a%';

select first_name
from employees
where first_name like '__a_';



select commission_pct, first_name
from employees
where commission_pct is not null;

select first_name

from employees
where manager_id is null and commission_pct is null;

select department_id, salary, first_name
from employees
order by department_id asc, salary desc;




