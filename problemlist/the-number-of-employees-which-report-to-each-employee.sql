select managers.REPORTS_TO         as employee_id,
       employee.name,
       count(managers.REPORTS_TO)  as reports_count,
       round(avg(managers.AGE), 0) as average_age
from EMPLOYEES managers
         inner join EMPLOYEES employee
                    on managers.REPORTS_TO = employee.EMPLOYEE_ID
group by managers.REPORTS_TO
having count(managers.REPORTS_TO) > 0
order by EMPLOYEE_ID