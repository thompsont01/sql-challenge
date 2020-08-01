--1.
select "Employees".emp_no, 
	"Employees".last_name, 
	"Employees".first_name, 
	"Employees".sex, 
	"Salaries".salary
from "Employees" 
inner join "Salaries" on "Salaries".emp_no = "Employees".emp_no;

--2.
select "Employees".first_name,
	"Employees".last_name,
	"Employees".hire_date
from "Employees"
where hire_date > '12/31/1985' and hire_date < '01/01/1987';

--3.
SELECT "Dept_manager".dept_no,
	"Department".dept_name,
	"Dept_manager".emp_no,
	"Employees".last_name,
	"Employees".first_name

from "Dept_manager"
join "Employees" on "Dept_manager".emp_no = "Employees".emp_no
join "Department" on "Department".dept_no = "Dept_manager".dept_no

--4.
SELECT "Employees".emp_no,
	"Employees".last_name,
	"Employees".first_name,
	"Department".dept_name
	
from "Employees"
join "Dept_emp" on "Dept_emp".emp_no = "Employees".emp_no
join "Department" on "Department".dept_no = "Dept_emp".dept_no

--5.
SELECT * from "Employees" WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%' 

--6.
SELECT "Employees".emp_no,
	"Employees".last_name,
	"Employees".first_name,
	"Department".dept_name

from "Employees"

join "Dept_emp" on "Dept_emp".emp_no = "Employees".emp_no
join "Department" on "Department".dept_no = "Dept_emp".dept_no
WHERE dept_name LIKE 'Sales'

--7.
SELECT "Employees".emp_no,
	"Employees".last_name,
	"Employees".first_name,
	"Department".dept_name

from "Employees"

join "Dept_emp" on "Dept_emp".emp_no = "Employees".emp_no
join "Department" on "Department".dept_no = "Dept_emp".dept_no
WHERE dept_name LIKE 'Sales' OR dept_name LIKE 'Development'

--8.
SELECT last_name, count(last_name)
FROM "Employees"
GROUP BY last_name
ORDER BY count(last_name) desc