create table employees (
	emp_no int not null primary key,
	emp_title_id varchar(10),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(1),
	hire_date date
	);
	
create table departments (
	dept_no VARCHAR(4) not null primary key,
	dept_name VARCHAR(30)
	);
	
create table dept_emp (
	emp_no int foreign key,
	dept_no VARCHAR(4) foreign key
	);
	
create table dept_manager (
	dept_no VARCHAR(4) foreign key,
	emp_no int foreign key
	);
	
create table salaries (
	emp_no int foreign key,
	salary int
	);
	
create table titles (
	title_id VARCHAR (5) not null primary key,
	title VARCHAR(30)
	);
	