-- Show the total amount of male patients and the total amount of female patients in the patients table. Display the two results in the same row.
SELECT
    SUM(gender = 'M') AS total_male_patients,
    SUM(gender = 'F') AS total_female_patients
FROM
    patients;