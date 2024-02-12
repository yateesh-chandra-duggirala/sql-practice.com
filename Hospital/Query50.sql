-- Sort the province names in ascending order in such a way that the province 'Ontario' is always on top.

-- Method 1 : 
select province_name from province_names
ORDER BY
CASE
	WHEN province_name = 'Ontario' THEN 0
    ELSE 1
END,
province_name ASC;

-- Method 2 : 
select province_name from province_names
ORDER BY
(Not province_name = 'Ontario'),
province_name ASC;