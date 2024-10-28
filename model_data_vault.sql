CREATE TABLE Hub_Students (
    student_id SERIAL PRIMARY KEY,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100) NOT NULL
);
CREATE TABLE Hub_Subjects (
    subject_id SERIAL PRIMARY KEY,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100) NOT NULL
);
CREATE TABLE Hub_Exams (
    exam_id SERIAL PRIMARY KEY,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100) NOT NULL
);
CREATE TABLE Link_Student_Exam (
    student_id INT REFERENCES Hub_Students(student_id),
    exam_id INT REFERENCES Hub_Exams(exam_id),
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (student_id, exam_id)
);
CREATE TABLE Sat_Students (
    student_id INT REFERENCES Hub_Students(student_id),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Sat_Subjects (
    subject_id INT REFERENCES Hub_Subjects(subject_id),
    subject_name VARCHAR(100) NOT NULL,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Sat_Exams (
    exam_id INT REFERENCES Hub_Exams(exam_id),
    exam_date DATE NOT NULL,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Sat_Grades (
    student_id INT REFERENCES Hub_Students(student_id),
    exam_id INT REFERENCES Hub_Exams(exam_id),
    grade CHAR(2) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F')),
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
