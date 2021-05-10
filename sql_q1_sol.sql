-- 1. Write a SQL query to find the date EURO Cup 2016 started on.


Select Distinct play_date
From match_mast
order by play_date ASC
LIMIT 1