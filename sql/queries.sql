SELECT L.Learner_Name, C.Course_Name, C.Course_Description
FROM Learners L
JOIN Enrollments E ON L.Learner_ID = E.Learner_ID
JOIN Courses C ON E.Course_ID = C.Course_ID;

SELECT C.Course_Name, C.Course_Description, I.Instructor_Name
FROM Courses C
JOIN Instructors I ON C.Instructor_ID = I.Instructor_ID;

SELECT L.Learner_Name, C.Course_Name, I.Instructor_Name
FROM Learners L
JOIN Enrollments E ON L.Learner_ID = E.Learner_ID
JOIN Courses C ON E.Course_ID = C.Course_ID
JOIN Instructors I ON C.Instructor_ID = I.Instructor_ID;

SELECT Course_Name
FROM Courses
WHERE Course_ID IN (
    SELECT Course_ID
    FROM Enrollments
    GROUP BY Course_ID
    HAVING COUNT(Learner_ID) > 1
);

SELECT Learner_Name
FROM Learners
WHERE Learner_ID IN (
    SELECT Learner_ID
    FROM Enrollments
    WHERE Course_ID = 101 );

SELECT Instructor_Name
FROM Instructors
WHERE Instructor_ID IN (
    SELECT Instructor_ID
    FROM Courses
    GROUP BY Instructor_ID
    HAVING COUNT(Course_ID) > 1
);
