-- -- Create Tables for each CSV file in the starter_code folder


-- -- Departments
Create table departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
);

--Titles
Create table titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(30)

);

--Employees
Create table employees (
	emp_no VARCHAR(10) PRIMARY KEY,
	emp_title VARCHAR(10) REFERENCES titles(title_id),
	birth_date VARCHAR (30) NOT NULL,
	first_name VARCHAR (50),
	last_name VARCHAR(50),
	sex VARCHAR(1),
	hire_date VARCHAR (30) NOT NULL
	
);


-- --Dept_Emp
Create table dept_emp (
	emp_no VARCHAR (10) REFERENCES employees(emp_no),
	dept_no VARCHAR (10) REFERENCES departments(dept_no)
);

-- --Dept_Manager
Create table dept_manager (
	dept_no VARCHAR (10) REFERENCES departments(dept_no),
	emp_no VARCHAR (10)
	
);

-- --Salaries
Create table salaries (
	emp_no VARCHAR (10) REFERENCES employees(emp_no),
	salary INT

);

-- Import CSV files to specific tables
-- Employee table birthdates and hiring dates was unable to be imported as DATE datatype, thus it was imported as VARCHAR instead. 
-- STR_TO_DATE, CONVERT, TO_CHAR does not work to convert string to Date datatype.

