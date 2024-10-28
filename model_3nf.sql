CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE Subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL
);
CREATE TABLE Exams (
    exam_id SERIAL PRIMARY KEY,
    subject_id INT REFERENCES Subjects(subject_id),
    exam_date DATE NOT NULL
);
CREATE TABLE Preparation_Tips (
    tip_id SERIAL PRIMARY KEY,
    exam_id INT REFERENCES Exams(exam_id),
    tip_description TEXT NOT NULL
);
CREATE TABLE Grades (
    grade_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id),
    exam_id INT REFERENCES Exams(exam_id),
    grade CHAR(2) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F'))
);
