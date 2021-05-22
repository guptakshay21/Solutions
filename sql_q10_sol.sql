-- 10. Write a SQL query to find all available information about the players under contract to
-- Liverpool F.C. playing for England in EURO Cup 2016.

Select pm.*, sc.country_name
From player_mast pm

left join soccer_country sc
on sc.country_id = pm.team_id

where playing_club = 'Liverpool'