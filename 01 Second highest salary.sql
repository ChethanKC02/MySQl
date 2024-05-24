select max(salary) SecondHighestSalary from Employee where salary < (select max(salary) from employee);


select IFNULL( Null,  (select distinct Salary from Employee  order by Salary desc limit 1 offset 1) )as SecondHighestSalary