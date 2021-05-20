-- 5. Write a SQL query to find the number of bookings that happened in stoppage time.

Select count(*) AS 'No. of Bookings in Stoppage Time'
From player_booked
where play_schedule = 'ST'
