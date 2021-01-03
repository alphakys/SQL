--1.
select      employee_id,
            first_name,
            last_name,
            department_name
            
from employees em, departments de
where   em.department_id = de.department_id
order by department_name asc, employee_id desc;
            
select  *
from jobs;

--2.
select      employee_id,
            first_name,
            salary,
            department_name,
            job_title
from employees em, departments de, jobs j
where em.department_id = de.department_id and em.job_id = j.job_id
order by employee_id asc;

--2.1
select      employee_id,
            first_name,
            salary,
            department_name,
            job_title
from employees em left outer join departments de 
on   em.department_id = de.department_id
                  left outer join jobs j
on   em.job_id = j.job_id
order by employee_id asc;

--3.
select *
from locations;

select *
from departments;

select   de.location_id,
         city,
         department_name,
         department_id
from locations l, departments de
where  de.location_id = l.location_id
order by location_id asc;

--3-1.
select   de.location_id,
        city,
        department_name,
        department_id
from departments de left outer join locations l
on   de.location_id = l.location_id;

--4.
select *
from countries;

select *
from regions;

select region_name,
        country_name
from countries c, regions r
where c.region_id = r.region_id
order by region_name asc, country_name desc;

--5.
select  em.employee_id,
        em.first_name,
        em.hire_date,
        man.employee_id,
        man.first_name,
        man.hire_date
from employees em, employees man
where em.manager_id = man.employee_id and em.hire_date < man.hire_date
order by em.employee_id asc;

--6.
select distinct country_id
from locations;

select    l.country_id,
          
          country_name,
          de.location_id,
          city,
          department_id,
          department_name
from departments de, locations l, countries c
where de.location_id = l.location_id and l.country_id = c.country_id;

--7.
select    jh.employee_id "과거 업무",
          em.last_name||'-'||first_name,
          em.job_id "현재 업무",
          start_date,
          end_date
from job_history jh, employees em
where jh.employee_id = em.employee_id and jh.job_id = 'AC_ACCOUNT';

--8.
select   de.department_id,
        department_name,
        em.first_name "매니저 이름",
        city,
        country_name,
        region_name
from departments de, employees em, locations l, countries c, regions r
where de.manager_id = em.employee_id and de.location_id = l.location_id
      and l.country_id = c.country_id and c.region_id = r.region_id
order by de.department_id asc;

--9.
select   em.employee_id,
        em.first_name,
        department_name,
        man.first_name "매니저 이름"
from employees em left outer join employees man
on   em.manager_id = man.employee_id
                  inner join departments de
on   em.department_id = de.department_id
order by em.employee_id asc;



















