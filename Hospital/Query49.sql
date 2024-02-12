-- Show the percent of patients that have 'M' as their gender. Round the answer to the nearest hundreth number and in percent form.
SELECT 
   CONCAT(
     ROUND(SUM(gender='M') / CAST(COUNT(*) AS float), 4) * 100, '%'
   ) AS percentage_of_male
FROM patients;