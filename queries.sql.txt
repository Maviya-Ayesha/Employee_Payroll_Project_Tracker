-- 1. List all employees with their department name
SELECT e.eno, e.ename, d.dname
FROM employee e
JOIN department d ON d.hod = e.eno OR e.eno IN (
    SELECT hod FROM department
    WHERE hod = e.eno
);

-- 2. Show all projects and the employees working on them
SELECT p.pname, e.ename, w.hours
FROM works_on w
JOIN employee e ON w.eno = e.eno
JOIN project p ON w.pno = p.pno
ORDER BY p.pname;

-- 3. Total hours each employee worked across all projects
SELECT e.ename, SUM(w.hours) AS total_hours
FROM works_on w
JOIN employee e ON w.eno = e.eno
GROUP BY e.ename;

-- 4. Find total payroll (salary + bonus - deductions) for June 2025
SELECT SUM(total_pay) AS total_june_payroll
FROM salary_log
WHERE month_name = 'June 2025';

-- 5. List employees earning more than average salary
SELECT ename, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

-- 6. List top 2 highest paid employees (by base salary)
SELECT ename, salary
FROM employee
ORDER BY salary DESC
LIMIT 2;

-- 7. Show department HODs with department names
SELECT d.dname, e.ename AS hod_name
FROM department d
JOIN employee e ON d.hod = e.eno;

-- 8. Show each project with the number of employees working on it
SELECT p.pname, COUNT(w.eno) AS employee_count
FROM project p
LEFT JOIN works_on w ON p.pno = w.pno
GROUP BY p.pname;

-- 9. Show employees who worked on more than one project
SELECT w.eno, e.ename, COUNT(*) AS project_count
FROM works_on w
JOIN employee e ON w.eno = e.eno
GROUP BY w.eno, e.ename
HAVING COUNT(*) > 1;

-- 10. List employees with salary greater than 60,000 and joined before 2020
SELECT ename, salary, joining_date
FROM employee
WHERE salary > 60000 AND joining_date < '2020-01-01';
