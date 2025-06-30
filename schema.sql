-- Employee Table
CREATE TABLE employee (
    eno INT PRIMARY KEY,
    ename VARCHAR(30),
    dob DATE,
    designation VARCHAR(20),
    salary NUMERIC(8,2),
    sex CHAR(1),
    joining_date DATE
);

-- Department Table
CREATE TABLE department (
    dno INT PRIMARY KEY,
    dname VARCHAR(30),
    hod INT,
    CONSTRAINT fk_dept_hod FOREIGN KEY (hod) REFERENCES employee(eno)
);

-- Project Table
CREATE TABLE project (
    pno INT PRIMARY KEY,
    pname VARCHAR(40),
    location VARCHAR(30),
    budget NUMERIC(10,2)
);

-- Works_On Table (mapping employee to projects)
CREATE TABLE works_on (
    eno INT,
    pno INT,
    hours NUMERIC(5,2),
    PRIMARY KEY (eno, pno),
    CONSTRAINT fk_works_emp FOREIGN KEY (eno) REFERENCES employee(eno),
    CONSTRAINT fk_works_proj FOREIGN KEY (pno) REFERENCES project(pno)
);

-- Salary_Log Table (for monthly payroll tracking)
CREATE TABLE salary_log (
    log_id SERIAL PRIMARY KEY,
    eno INT,
    month_name VARCHAR(15),
    base_salary NUMERIC(8,2),
    bonus NUMERIC(6,2),
    deductions NUMERIC(6,2),
    total_pay NUMERIC(10,2),
    CONSTRAINT fk_salary_emp FOREIGN KEY (eno) REFERENCES employee(eno)
);
