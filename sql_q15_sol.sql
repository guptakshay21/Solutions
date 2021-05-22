--  15. Write a SQL query to find the referees who booked the most number of players.
-- (Not sure what the question is asking for, so my best guess)

Select rm.referee_id, rm.referee_name, count(booking_time) AS Num_of_Bookings
From player_booked pb

left join match_mast mm
on pb.match_no = mm.match_no

left join referee_mast rm
on mm.referee_id = rm.referee_id

group by rm.referee_id, rm.referee_name
order by Num_of_Bookings desc
limit 3