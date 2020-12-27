
select department_id,
        sum(salary)
        
from employees
where sum(salary)>=20000  --그룹함수는 where 쓰지 못한다.
group by department_id;





select department_id,
        count(*),
        sum(salary)
from employees
group by department_id
having sum(salary)>=20000;


select employee_id,
        job_id,
        salary,
        case when job_id = 'AC_ACCOUNT' then salary+(salary*0.1)
             when job_id = 'SA_REP' then salary+(salary*0.2)
             when job_id = 'ST_CLERK' then salary+(salary*0.3)
            
        end realsalary            
from employees
where job_id in('AC_ACCOUNT','SA_REP','ST_CLERK');

select first_name,
        department_id,
        
        case when department_id < '50' then 'A-TEAM'
             when department_id < '100' then 'B-TEAM'
            when department_id < '150' then 'C-TEAM'
            else '팀없음'
         end "부서코드"   
from employees       
order by "부서코드" asc;














