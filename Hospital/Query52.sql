-- We need a breakdown for the total amount of admissions each doctor has started each year. Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.

select admissions.attending_doctor_id, concat(doctors.first_name,' ',doctors.last_name) as full_name, doctors.specialty, year(admissions.admission_date), count(admissions.attending_doctor_id) from admissions Join doctors on admissions.attending_doctor_id = doctors.doctor_id
group by admissions.attending_doctor_id, year(admissions.admission_date)
order by doctor_id, concat(doctors.first_name,' ',doctors.last_name), year(admissions.admission_date)