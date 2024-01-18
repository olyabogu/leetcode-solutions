select employees.NAME as employee
from EMPLOYEE employees
         inner join EMPLOYEE managers on employees.MANAGERID = managers.ID
where employees.SALARY > managers.SALARY