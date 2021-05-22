-- 12. Write a SQL query that returns the total number of goals scored by each position on
-- each country’s team. Do not include positions which scored no goals.

Select pp.position_id, pp.position_desc, sc.country_name, count(gd.goal_id) AS Num_of_goals

From  soccer_country sc 

left join goal_details gd
on gd.team_id = sc.country_id

left join player_mast pm
on gd.player_id = pm.player_id

left join playing_position pp
on pm.posi_to_play = pp.position_id

group by pp.position_id, pp.position_desc, sc.country_name
having Num_of_goals <> 0
order by country_name, position_id