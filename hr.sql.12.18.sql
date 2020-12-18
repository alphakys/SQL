
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





