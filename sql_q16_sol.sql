-- 16. Write a SQL query to find referees and the number of matches they worked in each
-- venue.
Select rm.referee_id, rm.referee_name, sv.Venue_id, sv.venue_name, count(mm.match_no) AS Num_of_venues
From match_mast mm

left join referee_mast rm
on mm.referee_id = rm.referee_id

left join soccer_venue sv
on mm.venue_id = sv.venue_id

group by rm.referee_id, rm.referee_name, sv.Venue_id, sv.venue_name

order by Num_of_venues desc