-- 1) Insert into STUDENT table
INSERT INTO Student (Student_ID, Age, Gender, Field_of_Study)
SELECT DISTINCT
    Student_ID, Age, Gender, Field_of_Study
FROM Staging_EducationCareer;

-- 2) Insert into AcademicPerformance
INSERT INTO AcademicPerformance (Student_ID, High_School_GPA, SAT_Score, University_GPA)
SELECT
    Student_ID, High_School_GPA, SAT_Score, University_GPA
FROM Staging_EducationCareer;

-- 3) Insert into Experience
INSERT INTO Experience (Student_ID, Internships_Completed, Projects_Completed, Certifications)
SELECT
    Student_ID, Internships_Completed, Projects_Completed, Certifications
FROM Staging_EducationCareer;

-- 4) Insert into Skills
INSERT INTO Skills (Student_ID, Soft_Skills_Score, Networking_Score)
SELECT
    Student_ID, Soft_Skills_Score, Networking_Score
FROM Staging_EducationCareer;

-- 5) Insert into CareerOutcome
INSERT INTO CareerOutcome (Student_ID, Job_Offers, Starting_Salary,
                           Career_Satisfaction, Years_to_Promotion,
                           Current_Job_Level, Work_Life_Balance,
                           Entrepreneurship)
SELECT
    Student_ID, Job_Offers, Starting_Salary,
    Career_Satisfaction, Years_to_Promotion,
    Current_Job_Level, Work_Life_Balance,
    Entrepreneurship
FROM Staging_EducationCareer;
