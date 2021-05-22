-- 20. Write a SQL query to find the substitute players who came into the field in the first
-- half of play, within a normal play schedule.

Select io.player_id, pm.player_name
From player_in_out io

left join player_mast pm
on io.player_id = pm.player_id

where io.play_schedule = 'NT'
and io.play_half = 1
and io.in_out = 'I'