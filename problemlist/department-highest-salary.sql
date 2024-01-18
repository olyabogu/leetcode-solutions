select DEPARTMENT.NAME as department, EMPLOYEE.NAME as employee, EMPLOYEE.SALARY as salary
from EMPLOYEE
         join DEPARTMENT on EMPLOYEE.DEPARTMENTID = DEPARTMENT.ID
where (DepartmentId, Salary) in
      (select DepartmentId, max(Salary)
       from Employee
       group by DepartmentId)
