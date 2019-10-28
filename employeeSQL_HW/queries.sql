SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no);

SELECT * FROM employees
WHERE hire_date LIKE '1986%'
ORDER BY hire_date DESC;

SELECT e.last_name, e.first_name, dm.emp_no, dm.dept_no, d.dept_name, dm.from_date, dm.to_date
FROM employees AS e
JOIN dept_manager AS DM
ON e.emp_no = dm.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no;

SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no;

SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS counts
FROM employees
GROUP BY last_name
ORDER BY counts DESC;