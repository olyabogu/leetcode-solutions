select name, BONUS
from EMPLOYEE
         left join bonus on EMPLOYEE.EMPID = BONUS.EMPID
where BONUS < 1000
   or BONUS is null