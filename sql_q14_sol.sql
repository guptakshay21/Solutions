-- 14. Write a SQL query to find referees and the number of bookings they made for the
-- entire tournament. Sort your answer by the number of bookings in descending order.

Select rm.referee_id, rm.referee_name, count(booking_time) AS Num_of_Bookings
From player_booked pb

left join match_mast mm
on pb.match_no = mm.match_no

left join referee_mast rm
on mm.referee_id = rm.referee_id

group by rm.referee_id, rm.referee_name
order by Num_of_Bookings desc