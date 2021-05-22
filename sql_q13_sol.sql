--  13. Write a SQL query to find all the defenders who scored a goal for their teams.


Select pm.player_name, pp.position_desc, pm.playing_club, count(gd.goal_id) AS Goals

From goal_details gd

left join player_mast pm
on gd.player_id = pm.player_id

left join playing_position pp
on pm.posi_to_play = pp.position_id

where pp.position_desc = 'Defenders'
group by pp.position_desc, pm.playing_club, pm.player_name
order by pm.playing_club