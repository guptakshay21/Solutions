-- 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for
-- Germany, who played in Germany’s group stage matches.

Select Distinct Country_name, jersey_no, player_name
From soccer_country sc

inner join match_details md 
on sc.country_id = md.team_id

left join player_mast pm
on md.player_gk = pm.player_id

where country_name = 'Germany'
and md.play_stage = 'G'