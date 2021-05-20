-- 11. Write a SQL query to find the players, their jersey number, and playing club who were
-- the goalkeepers for England in EURO Cup 2016.

Select player_id, player_name, jersey_no, playing_club

From player_mast pm

left join soccer_country sc
on pm.team_id = sc.country_id

where posi_to_play = 'GK'
and country_name = 'England'