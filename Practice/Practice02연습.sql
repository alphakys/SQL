--1.
select count(manager_id)
from employees;
select count(*)
from employees;
select count(distinct manager_id)
from employees;

select distinct manager_id
from employees;

--2.
select max(salary) "최고임금",
        min(salary) "최저임금",
        max(salary)- min(salary) "최고임금 - 최저임금"
from employees;

--3.
select to_char(max(hire_date), '""yyyy"년"mm"월"dd"일"')
from employees;

--4.
select avg(salary),
        max(salary),
        min(salary),
        department_id
from employees
group by department_id
order by department_id desc;

--5.
select round(avg(salary),3),
        avg(salary),
        max(salary),
        min(salary),
        job_id
from employees
group by job_id
order by min(salary) desc;

--6.
select  to_char(hire_date,'yyyy-mm-dd day' ),
        first_name
from employees
where hire_date = (select min(hire_date)
                    from employees);



select em.first_name
from employees em,(select      hire_date
                    from        employees
                    group by    hire_date
                    having      count(hire_date)>1) emForFirstName
where em.hire_date = emForFirstName.hire_date;

select      count(hire_date)
                    from        employees
                    group by    hire_date
                    having      count(hire_date)>1;


--7.
select  avg(salary),
        min(salary),
        avg(salary) - min(salary),
        department_id
from employees
group by department_id
having   avg(salary) - min(salary)<2000
order by avg(salary) - min(salary) desc;

--8.
select max_salary - min_salary,
        job_title
from jobs
order by  max_salary - min_salary desc;

--9.
select avg(salary),
        max(salary),
        min(salary)
from employees;

select salary,
        hire_date
from employees
where hire_date > '05.12.31';


select      employee_id,
            salary
from  employees em,  (select      distinct man.employee_id 매니저,
                                     man.first_name
                      from employees e, employees man
                      where e.manager_id = man.employee_id and man.salary >5000
                      order by 매니저 asc) emFor
where em.employee_id = emfor.매니저 and hire_date > '05.12.31';



 select      distinct man.employee_id 매니저,
                     man.first_name,
                     man.salary
                    from employees e, employees man
                    where e.manager_id = man.employee_id and man.salary >5000
                    order by 매니저 asc;

/*
 select      distinct man.employee_id 매니저,
                     man.first_name,
                     man.salary
                    from employees e, employees man
                    where e.manager_id = man.employee_id and e.salary >5000
                    order by 매니저 asc;

*/

--10.
select     hire_date,
           first_name,
           salary*0.5 "이번달 보너스",
           case      when hire_date < '02/12/31'  then '창립멤버'
                     when hire_date between '03/01/01'and'03/12/31'  then '03년입사'
                     when hire_date between '04/01/01'and'04/12/31'  then '04년입사'
                     when hire_date > '04/12/31'    then '상장이후 입사'
            end "optDate"
from employees
order by hire_date asc;


















