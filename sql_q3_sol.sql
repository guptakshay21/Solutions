-- Write a SQL query to find the match number, date, and score for matches in which no
-- stoppage time was added in the 1st half.

Select match_no, play_date, goal_score
From match_mast
where stop1_sec = 0