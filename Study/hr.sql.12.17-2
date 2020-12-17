
select email||'@naver.com'
from employees
where department_id = 100;

select initcap(first_name)
from employees
where department_id =100;


-- 년/월/일 시/분/초

select sysdate,
        to_char(sysdate, 'YYYY'),
        to_char(sysdate, 'MM'),
        to_char(sysdate, 'dd')
from dual;

select to_char(sysdate, 'yyyy"년"mm"월"dd"일" hh24:mi:ss')
from dual;

select hire_date,
        to_char(hire_date, 'yyyy-mm-dd hh24:mi'),
        first_name
from employees;


--일반함수 -->NVL(컬럼명, null일 때값)/NVL2(컬럼명, null이 아닐때 값, null일 때 값)

select first_name,
        commission_pct,
        NVL(commission_pct,0)
from employees;

select manager_id,
        NVL2(manager_id,1,0)
from employees;

select email,
      initcap(email)
from employees
where department_id is not null;

select upper(first_name||'-'||last_name)
from employees;

select upper(country_name)
from countries;

select  phone_number,
        substr(phone_number,1,5),
        substr(phone_number,-4,4),
        first_name,
        substr(first_name,-5,5)
from employees;

select first_name,
       lpad(first_name,10),
       rpad(first_name,8,'*')
from employees;

select phone_number,
       substr(phone_number,1,3)
from employees;

select phone_number,
       replace(phone_number,'.','&')
from employees;

select first_name,
       substr(first_name,2,3),
       replace(first_name,substr(first_name,2,3),'***')
        
from employees;



select sysdate
from dual;

select  first_name,department_id,
        hire_date,
        trunc(months_between(sysdate, hire_date),0)
from employees
where department_id = 110;

select next_day(7,'monday')
from dual;

select next_day(17-12-20,'monday')
from dual;

select first_name,
        to_char(salary*12, '$999,999')
        from employees;
        
