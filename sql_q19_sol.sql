-- 19. Write a SQL query to find the number of captains who were also goalkeepers.

Select Count(player_gk) AS Num_of_Captains
From match_details
where player_gk in ( Select Distinct player_captain
					 From match_captain)