
-- NOT NULL is used to ensure there is a value in place

CREATE TABLE employees (
	emp_no INT 				NOT NULL,
	birth_date DATE			NOT NULL,
	first_name VARCHAR(20)	NOT NULL,
	last_name VARCHAR(20)	NOT NULL,
	gender VARCHAR(1)		NOT NULL,
	hire_date DATE			NOT NULL,
	PRIMARY KEY (emp_no)
);

-- UNIQUE is to ensure there are unique values for all dept names
CREATE TABLE departments (
	dept_no VARCHAR(5)		NOT NULL,
	dept_name VARCHAR(50)	NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE (dept_name)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5)		NOT NULL,
	emp_no 	INT				NOT NULL,
	from_date DATE			NOT NULL,
	to_date DATE			NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY  (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT 				NOT NULL,
	dept_no VARCHAR(5)		NOT NULL,
	from_date DATE			NOT NULL,
	to_date DATE			NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE titles (
	emp_no INT 				NOT NULL,
	title VARCHAR(50)		NOT NULL,
	from_date DATE			NOT NULL,
	to_date DATE 			NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, title, from_date)
);

CREATE TABLE salaries (
	emp_no INT 				NOT NULL,
	salary INT				NOT NULL,
	from_date DATE			NOT NULL,
	to_date DATE 			NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, from_date)
);



	