-- For each day display the total amount of admissions on that day. Display the amount changed from the previous date.
select admission_date, count(admission_date) as admission_day,
COUNT(admission_date) - lag(Count(admission_date)) OVER (ORDER BY admission_date) as Amount
from admissions
group by admission_date;