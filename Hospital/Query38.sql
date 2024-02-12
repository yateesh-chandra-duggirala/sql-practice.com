-- For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
SELECT 
	concat(patients.first_name,' ',patients.last_name) as full_name, 
    admissions.diagnosis, 
    concat(doctors.first_name,' ', doctors.last_name) as full_name_doctor from patients join admissions on patients.patient_id = admissions.patient_id join doctors on admissions.attending_doctor_id = doctors.doctor_id;