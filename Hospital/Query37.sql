-- Display the total amount of patients for each province. Order by descending.
SELECT
    pn.province_name,
    COUNT(patients.patient_id) AS cnt
FROM
    patients
JOIN
    province_names AS pn ON patients.province_id = pn.province_id
GROUP BY
    pn.province_name
ORDER BY
    cnt DESC;