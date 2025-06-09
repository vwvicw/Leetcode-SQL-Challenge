/* Write your MySQL query statement below
SELECT Students.student_id,student_name, Subjects.subject_name, Count(Examinations.subject_name) AS attended_exams
FROM Students
JOIN Subjects
LEFT JOIN Examinations ON Students.student_id  = Examinations.student_id AND Subjects.subject_name = Examinations.subject_name
GROUP BY 1, 2, 3
ORDER BY 1, 3
*/

SELECT Students.student_id,student_name, Subjects.subject_name, Count(Examinations.subject_name) AS attended_exams
FRom Students
JOIN Subjects
/*
| student_id | student_name | subject_name |
| ---------- | ------------ | ------------ |
| 1          | Alice        | Programming  |
| 1          | Alice        | Physics      |
| 1          | Alice        | Math         |
| 2          | Bob          | Programming  |
| 2          | Bob          | Physics      |
| 2          | Bob          | Math         |
| 13         | John         | Programming  |
| 13         | John         | Physics      |
| 13         | John         | Math         |
| 6          | Alex         | Programming  |
| 6          | Alex         | Physics      |
| 6          | Alex         | Math         |
*/
LEFT JOIN Examinations ON Students.student_id  = Examinations.student_id AND Subjects.subject_name = Examinations.subject_name
GROUP BY 1, 2, 3
ORDER BY 1, 3
