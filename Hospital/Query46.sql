-- Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.
-- Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.
select hasInsurance, sum(amount)
FROM 
(
	SELECT 
  	CASE 
		WHEN patient_id%2 = 0 THEN 'Yes'
    	Else 'No'
	END AS hasInsurance,
	CASE
		WHEN patient_id%2 = 0 THEN 10
    	ELSE 50
	END AS amount
 	from admissions
)
group by hasInsurance