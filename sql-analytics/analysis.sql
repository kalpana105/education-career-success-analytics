---------------------------------------------------------
--   ADVANCED ANALYTICAL SQL QUERIES  
--   EDUCATION → CAREER SUCCESS DATASET  
--   Author: Kalpana Kumari Medapati
---------------------------------------------------------

---------------------------------------------------------
-- 1. Highest-paying field of study
---------------------------------------------------------
SELECT s.Field_of_Study,
       AVG(c.Starting_Salary) AS AvgSalary
FROM Student s
JOIN CareerOutcome c ON s.Student_ID = c.Student_ID
GROUP BY s.Field_of_Study
ORDER BY AvgSalary DESC;

---------------------------------------------------------
-- 2. Does university GPA significantly influence salary? 
---------------------------------------------------------
SELECT
    CASE
        WHEN a.University_GPA < 3.0 THEN 'Low (Below 3.0)'
        WHEN a.University_GPA BETWEEN 3.0 AND 3.5 THEN 'Medium (3.0 - 3.5)'
        WHEN a.University_GPA BETWEEN 3.5 AND 4.0 THEN 'High (3.5 - 4.0)'
        ELSE 'Very High (4.0+)'
    END AS GPA_Range,
    AVG(c.Starting_Salary) AS AvgSalary
FROM AcademicPerformance a
JOIN CareerOutcome c ON a.Student_ID = c.Student_ID
GROUP BY GPA_Range
ORDER BY AvgSalary DESC;

---------------------------------------------------------
-- 3. Do internships increase job offers?
---------------------------------------------------------
SELECT 
    e.Internships_Completed,
    AVG(c.Job_Offers) AS AvgJobOffers,
    AVG(c.Starting_Salary) AS AvgSalary
FROM Experience e
JOIN CareerOutcome c ON e.Student_ID = c.Student_ID
GROUP BY e.Internships_Completed
ORDER BY e.Internships_Completed;

---------------------------------------------------------
-- 4. Soft skills vs career satisfaction
---------------------------------------------------------
SELECT 
    s.Soft_Skills_Score,
    AVG(c.Career_Satisfaction) AS AvgSatisfaction
FROM Skills s
JOIN CareerOutcome c ON s.Student_ID = c.Student_ID
GROUP BY s.Soft_Skills_Score
ORDER BY s.Soft_Skills_Score;

---------------------------------------------------------
-- 5. Networking score and promotion speed
--------------------------------------------------
