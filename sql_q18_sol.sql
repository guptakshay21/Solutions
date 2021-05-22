--  18. Write a SQL query to find the highest number of foul cards given in one match.

Select match_no, count(kick_id) AS Num_of_Foul_cards
From penalty_shootout
Group by match_no
order by Num_of_Foul_cards desc
limit 1