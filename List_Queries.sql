-- get employee number, last name, first name, sex, and salary
select "Employees".emp_no,"Employees".last_name,"Employees".first_name,
"Employees".sex,"Salaries".salary 
from "Employees"
inner join "Salaries" on "Salaries".emp_no="Employees".emp_no


--List first name, last name, and hire date for employees who were hired in 1986.

select "Employees".first_name,"Employees".last_name,"Employees".hire_date
from "Employees"
where hire_date > to_date('1985-01-01','YYYY-MM-DD')
and hire_date < to_date('1986-01-01','YYYY-MM-DD')


select "Employees".first_name,"Employees".last_name,"Employees".hire_date
from "Employees"
where hire_date between date '1986-01-01' and date '1986-01-01' + interval '1 Year'
order by hire_date

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select 
	"Departments".dept_no,
	"Departments".dept_name,
	"Dept_Manager".emp_no,
	"Employees".last_name,
	"Employees".first_name
from "Departments"
inner join "Dept_Manager" on "Dept_Manager".dept_no="Departments".dept_no
inner join "Employees" on "Employees".emp_no="Dept_Manager".emp_no

--select * from "Dept_Manager" where dept_no='d001'


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select 
	"Departments".dept_no,"Departments".dept_name,
	"Employees".emp_no,"Employees".last_name,"Employees".first_name
from "Employees"
inner join "Dept_Emp" on "Dept_Emp".emp_no="Employees".emp_no
inner join "Departments" on "Departments".dept_no="Dept_Emp".dept_no
order by "Departments".dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select
	"Employees".emp_no,"Employees".last_name,"Employees".first_name,"Employees".sex
from "Employees"
where "Employees".first_name = 'Hercules'
and last_name like 'B%'
order by last_name

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select 
	"Departments".dept_no,"Departments".dept_name,
	"Employees".emp_no,"Employees".last_name,"Employees".first_name
from "Employees"
inner join "Dept_Emp" on "Dept_Emp".emp_no="Employees".emp_no
inner join "Departments" on "Departments".dept_no="Dept_Emp".dept_no
where "Departments".dept_name = 'Sales'
order by "Employees".emp_no

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select 
	"Departments".dept_no,"Departments".dept_name,
	"Employees".emp_no,"Employees".last_name,"Employees".first_name
from "Employees"
inner join "Dept_Emp" on "Dept_Emp".emp_no="Employees".emp_no
inner join "Departments" on "Departments".dept_no="Dept_Emp".dept_no
where "Departments".dept_name = 'Sales' or "Departments".dept_name = 'Development'
order by "Employees".emp_no





select count(*) from "Employees"

