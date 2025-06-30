
-- Faculty
INSERT INTO faculty (ecode, ename, designation, dob, salary) VALUES
(101, 'Dr. Sharma', 'Professor', '1970-05-12', 95000),
(102, 'Dr. Ali', 'Associate Professor', '1978-10-23', 78000),
(103, 'Ms. Mehta', 'Assistant Professor', '1985-03-17', 65000);

-- Department
INSERT INTO department (dnum, dname, hod_eno) VALUES
(1, 'Mathematics', 101),
(2, 'Computer Science', 102);

-- Course
INSERT INTO course (cno, dno, cname, course_type, tenure) VALUES
(201, 1, 'B.Sc. Maths', 'UG', 3),
(202, 2, 'BCA', 'UG', 3),
(203, 2, 'M.Sc. CS', 'PG', 2);

-- Subject
INSERT INTO subject (scode, subject_title, credits) VALUES
(301, 'Algebra', 4),
(302, 'DBMS', 4),
(303, 'OOPs', 3),
(304, 'Real Analysis', 3);

-- Book
INSERT INTO book (book_id, author, publisher, edition, no_of_copies) VALUES
(401, 'S. Lang', 'Springer', '3rd', 5),
(402, 'Navathe', 'McGraw-Hill', '7th', 10),
(403, 'Balagurusamy', 'TMH', '6th', 8);

-- Subject_Book
INSERT INTO subject_book (scode, reference_book) VALUES
(301, 401),
(302, 402),
(303, 403);

-- Course_Subject
INSERT INTO course_subject (cno, scode) VALUES
(201, 301),
(202, 302),
(202, 303),
(203, 302);

-- Student
INSERT INTO student (rno, cno, name, dob, address) VALUES
(1, 201, 'Ayesha Khan', '2003-01-20', 'Delhi'),
(2, 202, 'Rahul Gupta', '2002-09-14', 'Noida'),
(3, 202, 'Nikita Roy', '2003-05-11', 'Kolkata'),
(4, 203, 'Zara Hussain', '2000-12-07', 'Hyderabad');
