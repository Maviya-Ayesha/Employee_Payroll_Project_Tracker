-- Insert into Employee
INSERT INTO employee (eno, ename, dob, designation, salary, sex, joining_date) VALUES
(1001, 'Ayesha Khan', '1995-02-15', 'Manager', 85000, 'F', '2018-06-01'),
(1002, 'Ravi Mehra', '1992-08-09', 'Analyst', 60000, 'M', '2019-07-15'),
(1003, 'Nikita Roy', '1990-11-20', 'HR', 55000, 'F', '2020-03-10'),
(1004, 'Shoaib Akhtar', '1988-04-28', 'Developer', 62000, 'M', '2021-01-20');

-- Insert into Department
INSERT INTO department (dno, dname, hod) VALUES
(1, 'Human Resources', 1003),
(2, 'IT', 1001),
(3, 'Finance', 1002);

-- Insert into Project
INSERT INTO project (pno, pname, location, budget) VALUES
(201, 'Payroll Automation', 'Delhi', 300000),
(202, 'Employee Appraisal System', 'Mumbai', 200000),
(203, 'HR Analytics Dashboard', 'Chennai', 150000);

-- Insert into Works_On
INSERT INTO works_on (eno, pno, hours) VALUES
(1001, 201, 20.5),
(1002, 202, 15.0),
(1003, 203, 25.0),
(1004, 201, 18.0),
(1004, 202, 12.0);

-- Insert into Salary_Log
INSERT INTO salary_log (eno, month_name, base_salary, bonus, deductions, total_pay) VALUES
(1001, 'June 2025', 85000, 5000, 1500, 88500),
(1002, 'June 2025', 60000, 4000, 2000, 62000),
(1003, 'June 2025', 55000, 3500, 1000, 57500),
(1004, 'June 2025', 62000, 2500, 1800, 62700);
