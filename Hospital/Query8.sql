-- Show how many patients have a birth_date with 2010 as the birth year.
SELECT count(patient_id) from patients where substr(birth_date,1,4) IN ('2010');