---------------------------------------------------------
--   EDUCATION → CAREER SUCCESS DATABASE (DDL SCRIPT)
--   Author: Kalpana Kumari Medapati
---------------------------------------------------------

-- ================================
-- 1. STUDENT MASTER TABLE
-- ================================
CREATE TABLE Student (
    Student_ID        VARCHAR(10) PRIMARY KEY,
    Age               INT,
    Gender            VARCHAR(20),
    Field_of_Study    VARCHAR(100)
);

-- ================================
-- 2. ACADEMIC PERFORMANCE TABLE
-- ================================
CREATE TABLE AcademicPerformance (
    AcademicID        INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Student_ID        VARCHAR(10),
    High_School_GPA   DECIMAL(3,2),
    SAT_Score         INT,
    University_GPA    DECIMAL(3,2),

    CONSTRAINT FK_Academic_Student
        FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

-- ================================
-- 3. EXPERIENCE TABLE
-- ================================
CREATE TABLE Experience (
    ExperienceID           INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Student_ID             VARCHAR(10),
    Internships_Completed  INT,
    Projects_Completed     INT,
    Certifications         INT,

    CONSTRAINT FK_Experience_Student
        FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

-- ================================
-- 4. SKILLS TABLE
-- ================================
CREATE TABLE Skills (
    SkillsID           INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Student_ID         VARCHAR(10),
    Soft_Skills_Score  INT,
    Networking_Score   INT,

    CONSTRAINT FK_Skills_Student
        FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

-- ================================
-- 5. CAREER OUTCOME TABLE
-- ================================
CREATE TABLE CareerOutcome (
    CareerOutcomeID       INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Student_ID            VARCHAR(10),
    Job_Offers            INT,
    Starting_Salary       INT,
    Career_Satisfaction   INT,
    Years_to_Promotion    INT,
    Current_Job_Level     VARCHAR(50),
    Work_Life_Balance     INT,
    Entrepreneurship      VARCHAR(10),

    CONSTRAINT FK_Career_Student
        FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);
