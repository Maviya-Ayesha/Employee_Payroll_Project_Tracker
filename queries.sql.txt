-- 1. List all students with their course names
SELECT s.rno, s.name, c.cname
FROM student s
JOIN course c ON s.cno = c.cno;

-- 2. Show all subjects taught in the 'BCA' course
SELECT cs.cno, c.cname, sub.subject_title
FROM course_subject cs
JOIN course c ON cs.cno = c.cno
JOIN subject sub ON cs.scode = sub.scode
WHERE c.cname = 'BCA';

-- 3. List each subject with its reference books
SELECT sub.subject_title, b.author, b.publisher, b.edition
FROM subject_book sb
JOIN subject sub ON sb.scode = sub.scode
JOIN book b ON sb.reference_book = b.book_id;

-- 4. Show department names with their HOD names
SELECT d.dname AS department, f.ename AS hod
FROM department d
JOIN faculty f ON d.hod_eno = f.ecode;

-- 5. Show each student along with the subjects they are enrolled in
SELECT s.name AS student, sub.subject_title
FROM student s
JOIN course_subject cs ON s.cno = cs.cno
JOIN subject sub ON cs.scode = sub.scode;

-- 6. Count how many students are enrolled in each course
SELECT c.cname, COUNT(*) AS student_count
FROM student s
JOIN course c ON s.cno = c.cno
GROUP BY c.cname;

-- 7. List all books that are referred by more than one subject (if any)
SELECT b.book_id, b.author, COUNT(*) AS subject_count
FROM subject_book sb
JOIN book b ON sb.reference_book = b.book_id
GROUP BY b.book_id, b.author
HAVING COUNT(*) > 1;

-- 8. Find all students born after the year 2002
SELECT rno, name, dob
FROM student
WHERE dob > '2002-12-31';

-- 9. Get a list of courses with their department name
SELECT c.cname, d.dname
FROM course c
JOIN department d ON c.dno = d.dnum;

-- 10. Show subjects which are not assigned any course (if any)
SELECT subject_title
FROM subject
WHERE scode NOT IN (SELECT scode FROM course_subject);
