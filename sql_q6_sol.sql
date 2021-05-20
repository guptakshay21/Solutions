-- 6. Write a SQL query to find the number of matches that were won by a single point, but
-- do not include matches decided by penalty shootout.


SELECT Count(match_no)

From(
		Select *, ABS(goal_score - LAG(goal_score) OVER (partition by match_no order by match_no)) AS Difference
		From match_details
        where decided_by <> 'P'
	) a
 
Where Difference  = '1' 