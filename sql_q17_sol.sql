-- 17. Write a SQL query to find the country where the most assistant referees come from,
-- and the count of the assistant referees.

Select sc.country_name, count(ass_ref_id) AS Num_of_Asst_ref
From asst_referee_mast arm

left join soccer_country sc

on sc.country_id = arm.country_id

group by sc.country_name

order by Num_of_Asst_ref desc