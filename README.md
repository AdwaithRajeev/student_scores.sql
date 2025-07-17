# SQL Student Scores Practice

This is a beginner-level SQL project to practice creating tables, inserting data, and writing queries using `JOIN`, `WHERE`, `AND`, and `GROUP BY`.

## 🧾 Tables Used

### students
| Column | Type    | Description           |
|--------|---------|-----------------------|
| id     | SERIAL  | Primary key (auto ID) |
| name   | VARCHAR | Student's name        |
| class  | INT     | Student's class       |

### scores
| Column     | Type    | Description                        |
|------------|---------|------------------------------------|
| id         | SERIAL  | Primary key                        |
| student_id | INT     | Foreign key linked to `students`   |
| subject    | VARCHAR | Subject name (e.g., Maths)         |
| marks      | INT     | Marks scored                       |

## 📥 Sample Queries

- Show all students and scores:
```sql
SELECT * FROM students;
SELECT * FROM scores;
