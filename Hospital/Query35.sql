-- Show first_name, last_name, and the total number of admissions attended for each doctor.
-- Every admission has been attended by a doctor.

select first_name, last_name, count(doctor_id) from admissions join doctors on attending_doctor_id = doctor_id group by attending_doctor_id;