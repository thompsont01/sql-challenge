select "Employees".emp_no, 
	"Employees".last_name, 
	"Employees".first_name, 
	"Employees".sex, 
	"Salaries".salary
from "Employees" 
inner join "Salaries" on "Employees".emp_no = "Salaries".emp_no;

select "Employees".emp_no,
	"Employees".first_name,
	"Employees".last_name,
	EXTRACT (YEAR FROM hire_date) AS YEAR
from "Employees"
where hire_date > '12/31/1985' and hire_date < '01/01/1987';
