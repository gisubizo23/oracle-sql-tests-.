# Learner-Course Management System

This project is a simple learner-course management system implemented using SQL.
It demonstrates how to create tables, insert data, and manage relationships between learners, courses, instructors, and enrollments.

## Problem Statement

This database system is designed to manage information for a learner-course management system. The system stores and manages data about learners, instructors, courses, and enrollments, ensuring that all relationships between these entities are maintained and easily queried.
3. Database Schema
Describe the schema, including the tables and relationships.

## Database Schema

The system consists of four main tables:
- **Learners**: Stores information about learners (ID, Name, Email).
- **Instructors**: Stores information about instructors (ID, Name).
- **Courses**: Stores course information (ID, Name, Instructor, Description).
- **Enrollments**: Manages the many-to-many relationship between learners and courses.

### Relationships:
- A learner can enroll in many courses.
- A course can have many learners.
- A course is taught by one instructor


## SQL Commands

The following SQL commands were used to create the system:

- **DDL (Data Definition Language)**: Create tables for Learners, Instructors, Courses, and Enrollments.
- **DML (Data Manipulation Language)**: Insert data, update records, and delete learners.
- **DDL Commands**:
  ```sql
  CREATE TABLE Learners (...);
  CREATE TABLE Instructors (...);
  CREATE TABLE Courses (...);
  CREATE TABLE Enrollments (...);

  
Sample DML Commands:
  INSERT INTO Learners (Learner_ID, Learner_Name, Learner_Email) VALUES (1, 'Alice Smith', 'alice.smith@example.com');
INSERT INTO Courses (Course_ID, Course_Name) VALUES (101, 'Mathematics');

Join Commands:
SELECT L.Learner_Name, C.Course_Name
FROM Learners L
JOIN Enrollments E ON L.Learner_ID = E.Learner_ID
## Conclusion

This system successfully demonstrates how to manage learner-course relationships using SQL. 
The schema and queries allow easy management of learners, courses, and enrollments, with flexible options for retrieving data through joins and subqueries.
JOIN Courses C ON E.Course_ID = C.Course_ID;
