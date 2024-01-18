select DEPARTMENT.NAME as department, EMPLOYEE.name as employee, EMPLOYEE.salary as salary
from EMPLOYEE
         join department on EMPLOYEE.DEPARTMENTID = DEPARTMENT.ID
group by department, employee
having count(*) <= 3
order by DEPARTMENT, SALARY desc
-- todo