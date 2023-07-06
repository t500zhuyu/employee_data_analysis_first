
use employee_data_analysis;
select * from employee_datasets;
# Question
 # Write a query to find the first name and salary of the employee whose 
 # salary is higher than the employee with the last name Kumar from the employee table.
 
SELECT f_name, l_name, salary
FROM employee_datasets
WHERE salary > (
    SELECT salary
    FROM employee_datasets
    WHERE l_name = 'Kumar'
    LIMIT 1
);

# Write a query to display the employee id and last name of the employee 
# whose salary is greater than the average salary from the employee table.

# Showing the average salary of the column salary
SELECT AVG(salary) AS average_salary
FROM employee_datasets;


select emp_id, l_name
from employee_datasets
Where salary > (
	select AVG(salary)
    from employee_datasets
);

select emp_id, l_name, salary
from employee_datasets
Where salary > (
	select AVG(salary)
    from employee_datasets
);

# Write a query to display the employee id, first name, and salary of the employees
#  who earn a salary that is higher than the salary of all 
# the shipping clerks (JOB_ID = HP122). Sort the results of the salary in ascending order.
select * from employee_datasets;

select emp_id, f_name, salary
from employee_datasets
where salary > (
	select max(salary)
    from employee_datasets
    where job_id = 'HP122'
) ORDER BY salary asc;

# Write a query to display the first name, employee id, and salary of the first three employees
# with highest salaries.
select * from employee_datasets;

select f_name, job_id, salary
from employee_datasets
order by salary desc
limit 3;




















