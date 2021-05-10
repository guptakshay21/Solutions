-- 2. Write a SQL query to find the number of matches that were won by penalty shootout.

Select count(*)
From match_details
where win_lose = 'W'
and decided_by = 'P'