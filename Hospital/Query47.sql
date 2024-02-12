-- Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name

-- Method 1 : Using Sum
select pn.province_name 
from province_names pn, patients pt
on pn.province_id = pt.province_id
GROUP BY pn.province_name
HAVING SUM(CASE WHEN pt.gender = 'M' THEN 1 ELSE 0 END) > SUM(CASE WHEN pt.gender = 'F' THEN 1 ELSE 0 END);

-- Method 2 : Using Count
select pn.province_name 
from province_names pn, patients pt
on pn.province_id = pt.province_id
GROUP BY pn.province_name
HAVING COUNT(CASE WHEN pt.gender = 'M' THEN 1 END) > COUNT(CASE WHEN pt.gender = 'F' THEN 1 END);