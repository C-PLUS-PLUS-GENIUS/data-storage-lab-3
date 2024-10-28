# data-storage-lab-3

[![GitHub Repository](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/C-PLUS-PLUS-GENIUS/data-storage-lab-3)

## Лабораторная работа №3 по дисциплине "Хранилища данных"

#### Описание
Модели баз данных в 3NF и DATA VAULT.

#### Клонирование репозитория

```bash
git clone https://github.com/C-PLUS-PLUS-GENIUS/data-storage-lab-3.git
cd bnd-ds-cv-case
```

## Содержание

В файлах представлен SQL код для создания структур баз данных в форматах 3NF и DATA VAULT.

#### Модель 3NF

- **Students** (Студенты)
- student_id (PK)
- name
- email
- **Subjects** (Предметы)
- subject_id (PK)
- subject_name
- **Exams** (Экзамены)
- exam_id (PK)
- subject_id (FK)
- exam_date
- **Preparation_Tips** (Советы по подготовке)
- tip_id (PK)
- exam_id (FK)
- tip_description
- **Grades** (Оценки)
- grade_id (PK)
- student_id (FK)
- exam_id (FK)
- grade

#### Модель DATA VAULT

Хабы:
- **Hub_Students**
- student_id (PK)
- load_date
- record_source
- **Hub_Subjects**
- subject_id (PK)
- load_date
- record_source
- **Hub_Exams**
- exam_id (PK)
- load_date
- record_source
Связи:
- **Link_Student_Exam**
- student_id (FK)
- exam_id (FK)
- load_date
Сателлиты:
- **Sat_Students**
- student_id (FK)
- name
- email
- load_date
- **Sat_Subjects**
- subject_id (FK)
- subject_name
- load_date
- **Sat_Exams**
- exam_id (FK)
- exam_date
- load_date
- **Sat_Grades**
- student_id (FK)
- exam_id (FK)
- grade
- load_date
