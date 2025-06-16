# Write your MySQL query statement below
# was trying to use CHARINDEX() but does not exist - this is because we are likely using MySQL or PostgreSQL.

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE LOCATE('DIAB1', conditions)!=0
