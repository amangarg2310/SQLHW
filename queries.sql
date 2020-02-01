
-- Salary by employee
SELECT empl.emp_no,
	empl.last_name,
	empl.first_name,
	empl.gender,
	sal.salary
FROM employees as empl
	LEFT JOIN salaries as sal
		ON (empl.emp_no = sal.emp_no)
ORDER BY empl.emp_no;

-- Employees hired in 1986
SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-01-01';

-- Manager of each dept
SELECT dm.dept_no,
	dept.dept_name,
	dm.emp_no,
	empl.last_name,
	empl.first_name,
	dm.from_date,
	dm.to_date
FROM dept_manager AS dm
	INNER JOIN departments AS dept
		ON (dm.dept_no = dept.dept_no)
		INNER JOIN employees AS empl
		ON (dm.emp_no = empl.emp_no);
		
-- Department of each employees
SELECT empl.emp_no,
	empl.last_name,
	empl.first_name,
	dept.dept_name
FROM employees AS empl
	INNER JOIN dept_emp AS de
	ON (empl.emp_no = de.emp_no)
	INNER JOIN departments AS dept
	ON (de.dept_no = dept.dept_no)
ORDER BY empl.emp_no;

-- Employees whose first name is "Hercules" and last name begins with "B"
SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Employees in the Sales department
SELECT empl.emp_no,
	empl.last_name,
	empl.first_name,
	dept.dept_name
FROM employees AS empl
	INNER JOIN dept_emp AS de
	ON (empl.emp_no = de.emp_no)
	INNER JOIN departments as dept
	ON (de.dept_no = dept.dept_no)
WHERE dept.dept_name = 'Sales'
ORDER BY empl.emp_no;

--Employees in sales and dev departments
SELECT empl.emp_no,
	empl.last_name,
	empl.first_name,
	dept.dept_name
FROM employees as empl
	INNER JOIN dept_emp AS de
	ON (empl.emp_no = de.emp_no)
	INNER JOIN departments AS dept
	ON (de.dept_no = dept.dept_no)
WHERE dept.dept_name IN ('Sales', 'Development')
ORDER BY empl.emp_no;

-- The frequency of employee last names
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name);






		






	
	

	