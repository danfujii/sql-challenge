CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    hire_date VARCHAR NOT NULL
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INT NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL
);

CREATE TABLE titles (
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    title VARCHAR NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    PRIMARY KEY (dept_no, emp_no)
);