-- Show all columns for patient_id 542's most recent admission_date.
select * from admissions where patient_id = 542 group by admission_date order by admission_date desc limit 1
