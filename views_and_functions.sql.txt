-- view for Student Course Summary
CREATE OR REPLACE VIEW student_course_summary AS
SELECT 
    s.rno,
    s.name AS student_name,
    c.cname AS course_name,
    d.dname AS department_name
FROM student s
JOIN course c ON s.cno = c.cno
JOIN department d ON c.dno = d.dnum;

-- view for Subject–Book Reference View
CREATE OR REPLACE VIEW subject_book_info AS
SELECT 
    sub.subject_title,
    b.author,
    b.publisher,
    b.edition
FROM subject_book sb
JOIN subject sub ON sb.scode = sub.scode
JOIN book b ON sb.reference_book = b.book_id;

--function to get Student Count for a Course
CREATE OR REPLACE FUNCTION get_student_count(p_cno INT)
RETURNS INT AS $$
DECLARE
    stu_count INT;
BEGIN
    SELECT COUNT(*) INTO stu_count FROM student WHERE cno = p_cno;
    RETURN stu_count;
END;
$$ LANGUAGE plpgsql;

