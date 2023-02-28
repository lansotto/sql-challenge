create table employees (
	emp_no int not null primary key,
	emp_title_id varchar(10),
	birth_date date,
	first_name varchar(30) not null,
	last_name varchar(30),
	sex varchar(1),
	hire_date date not null
	);
	
create table departments (
	dept_no VARCHAR(4) not null primary key,
	dept_name VARCHAR(30) not null
	);
	
create table dept_emp (
	emp_no int,
	dept_no VARCHAR(4),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
	);
	
create table dept_manager (
	dept_no VARCHAR(4),
	emp_no int,
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
	);
	
create table salaries (
	emp_no int,
	salary int,
	foreign key (emp_no) references employees (emp_no)
	);
	
create table titles (
	title_id VARCHAR (5) not null primary key,
	title VARCHAR(30) not null
	);
	
	