-- Show all of the patients grouped into weight groups. Show the total amount of patients in each weight group. Order the list by the weight group decending. For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.

-- Method 1 :

select weight_group, count(weight_group)
FROM (
	select
	CASE
      WHEN weight between 0 and 9 then 0
      WHEN weight between 10 and 19 then 10
      WHEN weight between 20 and 29 then 20
      WHEN weight between 30 and 39 then 30
      WHEN weight between 40 and 49 then 40
      WHEN weight between 50 and 59 then 50
      WHEN weight between 60 and 69 then 60
      WHEN weight between 70 and 79 then 70
      WHEN weight between 80 and 89 then 80
      WHEN weight between 90 and 99 then 90
      WHEN weight between 100 and 109 then 100
      WHEN weight between 110 and 119 then 110
      WHEN weight between 120 and 129 then 120
      WHEN weight between 130 and 139 then 130
      WHEN weight between 140 and 149 then 140
      WHEN weight between 150 and 159 then 150
      WHEN weight between 160 and 169 then 160
      ELSE weight
	END as Weight_Group
	from patients
 )
group by weight_Group
order by weight_Group desc;

-- Method 2 :
select COUNT(*) AS count_weight_group,
FLOOR(weight/10) * 10 AS weight_group
from patients
group by weight_Group
order by weight_Group desc;
