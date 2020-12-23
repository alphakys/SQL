
--ROWNUM--
select  
        o.employee_id,
        o.first_name,
        o.salary
from (select rownum,
             em.employee_id,
             em.first_name,
             em.salary
      from employees em
      
      order by salary desc) o
where rownum >= 2 and rownum <=5;       


select oo.rnum,
       oo.first_name,
       oo.salary
from (select rownum rnum,
             o.employee_id,
             o.first_name,
             o.salary
            
            from(select 
                        em.first_name,
                        em.employee_id,
                        em.salary
                 from employees em
                 order by salary desc) o
        ) oo
where rnum >=2 and rnum <=5;      

--07년에 입사한 직원중 급여가 많은 직원중 3에서 7등의 이름 급여 입사일은? 

select hire_date,
       salary

from (select o1.rnum ,
             o1.hire_date,
             o1.salary

       from (select rownum rnum,
                    em.hire_date,
                    em.salary
             from employees em
             where to_char(hire_date, 'yy') = '07'
             order by salary desc) o1
             
      )o2 
             
             
where o2.rnum >=3 and o2.rnum <=7 ;























