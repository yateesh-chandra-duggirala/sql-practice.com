-- Show patient_id, first_name, last_name, and attending doctor's specialty. Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'. Check patients, admissions, and doctors tables for required information.

select patient_id, weight, height, 
CASE
  WHEN weight/(POWER(height / 100.0,2)) >= 30 THEN 1
  ELSE 0
END AS isObese
from patients;