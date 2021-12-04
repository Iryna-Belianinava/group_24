select * from employee_salary;
select * from employees;
select * from roles;
select * from roles_employee;
select * from salary;

--Output all amployees whose salaries are in database along with salaries:
select employees.employee_name,salary.monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id;

--Output all amployees whose salaries < 2000:
select employees.employee_name,salary.monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
where salary.monthly_salary < 2000;

--Output all salary positions but the employee hasn't been asigned:
select employee_name,monthly_salary
from salary
left join employee_salary on employee_salary.salary_id=salary.id
left join employees on employees.id=employee_salary.employee_id
where employee_name is null;

--Output all salary positions < 2000 but the employee hasn't been asigned:
select employee_name,monthly_salary
from salary
left join employee_salary on employee_salary.salary_id=salary.id
left join employees on employees.id=employee_salary.employee_id
where salary.monthly_salary <2000 and employee_name is null;

--Find all employees who haven't received salary:
select employees.employee_name,salary.monthly_salary
from salary
join employee_salary on employee_salary.salary_id=salary.id
right join employees on employees.id=employee_salary.employee_id
where salary.monthly_salary is null;

--Output all employees with the names of their positions:
select employee_name,role_name
from roles_employee
join employees on employees.id=roles_employee.id
join roles on roles.id=employees.id;

--Output the names and positions of Java developers only:
select employee_name,role_name
from roles_employee
join employees on employees.id=roles_employee.id
join roles on roles.id=employees.id
where roles.role_name like '%Java developer%';

--Output the names and positions of Python developers only:
select employee_name,role_name
from roles_employee
join employees on employees.id=roles_employee.id
join roles on roles.id=employees.id
where roles.role_name like '%Python developer%';

--Output the names and positions of all QA engineers:
select employee_name,role_name
from roles_employee
join employees on employees.id=roles_employee.id
join roles on roles.id=employees.id
where roles.role_name like '%QA engineer%';

--Output the names and positions of Manual QA engineers:
select employee_name,role_name
from roles_employee
join employees on employees.id=roles_employee.id
join roles on roles.id=employees.id
where roles.role_name like '%Manual QA engineer%';

--Output the names and positions of Automation QA engineers:
select employee_name,role_name
from roles_employee
join employees on employees.id=roles_employee.id
join roles on roles.id=employees.id
where roles.role_name like '%Automation QA engineer%';

--Output the names and salaries of Junior specialists:
select employees.employee_name, salary.monthly_salary, roles.role_name
from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';

--Output the names and salaries of Middle specialists:
select employees.employee_name, salary.monthly_salary, roles.role_name
from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%';

--Output the names and salaries of Senior specialists:
select employees.employee_name, salary.monthly_salary, roles.role_name
from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Senior%';

--Output the salaries of Java developers:
select salary.monthly_salary, roles.role_name
from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java developer%';

--Output the salaries of Python developers:
select salary.monthly_salary, roles.role_name
from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

--Output the names and salaries of Junior Python developers:
select employees.employee_name, salary.monthly_salary, roles.role_name
from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior Python%';

--Output the names and salaries of Middle JavaScript developers:
select employees.employee_name, salary.monthly_salary, roles.role_name
from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle JavaScript%';

--Output the names and salaries of Senior Java developers:
select employees.employee_name, salary.monthly_salary, roles.role_name
from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Senior Java developer%';

--Output salaries of Junior QA engineers:
select salary.monthly_salary, roles.role_name
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%Junior% %QA%';

--Output the average salary of all Junior specialists:
select avg (salary.monthly_salary) 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%Junior%';

--Output the sum of salaries for JavaScript developers:
select sum (salary.monthly_salary) 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%JavaScript%';

--Output the minimum salary for QA engineers:
select min (salary.monthly_salary) 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%QA%';

--Output the maximum salary for QA engineers:
select max (salary.monthly_salary) 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%QA%';

--Output the number of QA engineers:
select count ('%QA%')
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%QA%';

--Output the number of Middle specialists:
select count ('%Middle%')
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%Middle%';

--Output the number of developers:
select count ('%developer%')
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%developer%';

--Output the sum of salaries for developers:
select sum (salary.monthly_salary) 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where roles.role_name like '%developer%';

--Output the names, positions and salaries of all specialists in ascending order:
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
order by salary.monthly_salary asc;

--Output the names, positions and salaries of all specialists in ascending order
--for specialists whose salaries are from 1700 to 2300:
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where salary.monthly_salary between '1700' and '2300'
order by salary.monthly_salary asc;

--Output the names, positions and salaries of all specialists in ascending order
--for specialists whose salaries < 2300:
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;

--Output the names, positions and salaries of all specialists in ascending order
--for specialists whose salaries is 1100, 1500, 2000:
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary_id = salary.id
where salary.monthly_salary='1100' or salary.monthly_salary='1500' or salary.monthly_salary='2000'
order by salary.monthly_salary asc;