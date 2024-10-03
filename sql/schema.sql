CREATE TABLE Learners (
    Learner_ID NUMBER PRIMARY KEY,
    Learner_Name VARCHAR2(100),
    Learner_Email VARCHAR2(100)
);
CREATE TABLE Instructors (
    Instructor_ID NUMBER PRIMARY KEY,
    Instructor_Name VARCHAR2(100)
);
CREATE TABLE Courses (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(100),
    Instructor_ID NUMBER,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID)
);
CREATE TABLE Enrollments (
    Learner_ID NUMBER,
    Course_ID NUMBER,
    PRIMARY KEY (Learner_ID, Course_ID),
    FOREIGN KEY (Learner_ID) REFERENCES Learners(Learner_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

INSERT INTO Learners (Learner_ID, Learner_Name, Learner_Email)
VALUES (1, 'Alice Smith', 'alice.smith@example.com');
INSERT INTO Learners (Learner_ID, Learner_Name, Learner_Email)
VALUES (2, 'Bob Johnson', 'bob.johnson@example.com');
INSERT INTO Learners (Learner_ID, Learner_Name, Learner_Email)
VALUES (3, 'Charlie Brown', 'charlie.brown@example.com');
INSERT INTO Learners (Learner_ID, Learner_Name, Learner_Email)
VALUES (4, 'Diane Miller', 'diane.miller@example.com');
INSERT INTO Learners (Learner_ID, Learner_Name, Learner_Email)
VALUES (5, 'Emma Watson', 'emma.watson@example.com');

UPDATE Learners
SET Learner_Email = 'alice.updated@example.com'
WHERE Learner_ID = 1;



DELETE FROM Learners
WHERE Learner_ID = 2; 


ALTER TABLE Courses
ADD Course_Description VARCHAR2(255);

SELECT * FROM Learners;

GRANT SELECT ON Courses TO PL_ASSIGN;

SELECT * FROM Learners;
SELECT * FROM Enrollments;

SELECT * FROM Courses;

INSERT INTO Courses (Course_ID, Course_Name) VALUES (101, 'Mathematics');
INSERT INTO Courses (Course_ID, Course_Name) VALUES (102, 'Science');
INSERT INTO Courses (Course_ID, Course_Name) VALUES (103, 'English Literature');
INSERT INTO Courses (Course_ID, Course_Name) VALUES (104, 'History');


INSERT INTO Instructors (Instructor_ID, Instructor_Name) 
VALUES (1, 'Dr. John Doe');

INSERT INTO Instructors (Instructor_ID, Instructor_Name) 
VALUES (2, 'Prof. Jane Smith');

INSERT INTO Enrollments (Learner_ID, Course_ID) VALUES (1, 101); 
INSERT INTO Enrollments (Learner_ID, Course_ID) VALUES (2, 102); 
INSERT INTO Enrollments (Learner_ID, Course_ID) VALUES (3, 101);
INSERT INTO Enrollments (Learner_ID, Course_ID) VALUES (4, 103);
INSERT INTO Enrollments (Learner_ID, Course_ID) VALUES (5, 104); 



SELECT * FROM LEARNERS

INSERT INTO Learners (Learner_ID, Learner_Name, Learner_Email) 
VALUES (2, 'Bob Johnson', 'bob.johnson@example.com');



UPDATE Courses
SET Instructor_ID = 1  
WHERE Course_ID = 101;


UPDATE Courses
SET Instructor_ID = 2  
WHERE Course_ID = 102;

UPDATE Courses
SET Instructor_ID = 1  
WHERE Course_ID = 103;

UPDATE Courses
SET Instructor_ID = 2 
WHERE Course_ID = 104;

SELECT * FROM COURSES
SELECT * FROM ENROLLMENTS

UPDATE Courses
SET Course_Description = 'An introductory course on mathematical principles and concepts'
WHERE Course_ID = 101;

UPDATE Courses
SET Course_Description = 'A course focused on the fundamental principles of physical and life sciences'
WHERE Course_ID = 102;

UPDATE Courses
SET Course_Description = 'An exploration of English literature, including poetry, drama, and fiction'
WHERE Course_ID = 103;

UPDATE Courses
SET Course_Description = 'A study of historical events, civilizations, and their impact on the modern world'
WHERE Course_ID = 104;

SELECT * FROM COURSES

