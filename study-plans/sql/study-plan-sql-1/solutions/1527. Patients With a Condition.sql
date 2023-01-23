-- 1527. Patients With a Condition
-- https://leetcode.com/problems/patients-with-a-condition/

/*
Create table If Not Exists Patients (patient_id int, patient_name varchar(30), conditions varchar(100))
Truncate table Patients
insert into Patients (patient_id, patient_name, conditions) values ('1', 'Daniel', 'YFEV COUGH')
insert into Patients (patient_id, patient_name, conditions) values ('2', 'Alice', '')
insert into Patients (patient_id, patient_name, conditions) values ('3', 'Bob', 'DIAB100 MYOP')
insert into Patients (patient_id, patient_name, conditions) values ('4', 'George', 'ACNE DIAB100')
insert into Patients (patient_id, patient_name, conditions) values ('5', 'Alain', 'DIAB201')
*/

-- MS SQL Server 
select patient_id, patient_name, conditions from Patients where conditions like 'DIAB1%' or conditions like '% DIAB1%';

-- Oracle
select patient_id, patient_name, conditions from Patients where conditions like 'DIAB1%' or conditions like '% DIAB1%';

-- MySQL
select patient_id, patient_name, conditions from Patients where conditions like 'DIAB1%' or conditions like '% DIAB1%';
