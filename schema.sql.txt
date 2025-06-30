-- Faculty Table
CREATE TABLE faculty (
    ecode INT PRIMARY KEY,
    ename VARCHAR(20),
    designation VARCHAR(20),
    dob DATE,
    salary NUMERIC(6)
);

-- Department Table
CREATE TABLE department (
    dnum INT PRIMARY KEY,
    dname VARCHAR(20),
    hod_eno INT,
    CONSTRAINT fk_hod_eno FOREIGN KEY (hod_eno) REFERENCES faculty(ecode)
);

-- Course Table
CREATE TABLE course (
    cno INT PRIMARY KEY,
    dno INT,
    cname VARCHAR(30),
    course_type VARCHAR(10),
    tenure INT,
    CONSTRAINT fk_course_dno FOREIGN KEY (dno) REFERENCES department(dnum)
);

-- Subject Table
CREATE TABLE subject (
    scode INT PRIMARY KEY,
    subject_title VARCHAR(30),
    credits INT
);

-- Book Table
CREATE TABLE book (
    book_id INT PRIMARY KEY,
    author VARCHAR(30),
    publisher VARCHAR(30),
    edition VARCHAR(20),
    no_of_copies INT
);

-- Subject_Book Mapping Table
CREATE TABLE subject_book (
    scode INT,
    reference_book INT,
    PRIMARY KEY (scode, reference_book),
    CONSTRAINT fk_subject FOREIGN KEY (scode) REFERENCES subject(scode),
    CONSTRAINT fk_book FOREIGN KEY (reference_book) REFERENCES book(book_id)
);

-- Course_Subject Mapping Table
CREATE TABLE course_subject (
    cno INT,
    scode INT,
    PRIMARY KEY (cno, scode),
    CONSTRAINT fk_cs_course FOREIGN KEY (cno) REFERENCES course(cno),
    CONSTRAINT fk_cs_subject FOREIGN KEY (scode) REFERENCES subject(scode)
);

-- Student Table
CREATE TABLE student (
    rno INT,
    cno INT,
    name VARCHAR(50),
    dob DATE,
    address VARCHAR(100),
    PRIMARY KEY (rno, cno),
    CONSTRAINT fk_student_course FOREIGN KEY (cno) REFERENCES course(cno)
);
