## Faculty & Course Management System (SQL Project)

This project simulates a mini database system for managing a college's academic structure, including faculty, departments, courses, subjects, students, and reference books.

Tools & Environment
- PostgreSQL (via pgAdmin)
- SQL (DDL, DML, Views, Functions)

Project Structure
- schema.sql – All CREATE TABLE scripts with primary/foreign keys
- sample_data.sql – INSERT statements with sample records
- queries.sql – SELECT, JOIN, aggregation and subquery examples
- views_and_functions.sql – Views and PL/pgSQL function
- screenshots/ – Optional folder with query result screenshots

Database Entities
- faculty
- department
- course
- subject
- book
- subject_book (mapping)
- course_subject (mapping)
- student

Sample Queries
- Show students with their enrolled course and department
- Get all subjects taught in a course
- Find which books are used for which subjects
- Count students per course
- View subject–book reference table

Highlights
- Used JOINs, subqueries, GROUP BY, HAVING
- Created reusable VIEWS and a PL/pgSQL FUNCTION
- Demonstrates clean schema design with foreign key constraints

Author
Maviya Ayesha  
Jamia Millia Islamia — M.Sc. Mathematics with Computer Science  
SQL Developer Portfolio Project – 2025

