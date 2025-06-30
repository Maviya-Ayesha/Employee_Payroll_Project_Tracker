--View on Employee Payroll Summary
CREATE OR REPLACE VIEW employee_payroll_summary AS
SELECT 
    e.eno,
    e.ename,
    s.month_name,
    s.base_salary,
    s.bonus,
    s.deductions,
    s.total_pay
FROM employee e
JOIN salary_log s ON e.eno = s.eno;

SELECT * FROM employee_payroll_summary;


--Function to Calculate Total Bonus for an Employee
CREATE OR REPLACE FUNCTION get_total_bonus(emp_no INT)
RETURNS NUMERIC AS $$
DECLARE
    total_bonus NUMERIC;
BEGIN
    SELECT SUM(bonus)
    INTO total_bonus
    FROM salary_log
    WHERE eno = emp_no;

    RETURN COALESCE(total_bonus, 0);
END;
$$ LANGUAGE plpgsql;

--using Cursor
DO $$
DECLARE
    rec RECORD;
    emp_no INT := 1001;
    cur CURSOR FOR
        SELECT month_name, base_salary, bonus, deductions, total_pay
        FROM salary_log
        WHERE eno = emp_no;
BEGIN
    OPEN cur;
    LOOP
        FETCH cur INTO rec;
        EXIT WHEN NOT FOUND;
        RAISE NOTICE 'Month: %, Base: %, Bonus: %, Deduct: %, Total: %',
            rec.month_name, rec.base_salary, rec.bonus, rec.deductions, rec.total_pay;
    END LOOP;
    CLOSE cur;
END;
$$;


SELECT get_total_bonus(1001);
