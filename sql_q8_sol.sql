-- 8. Write a SQL query to find the match number for the game with the highest number of
-- penalty shots, and which countries played that match.

Select distinct match_no, country_name
From penalty_shootout ps
left join 	soccer_country sc
on ps.team_id = sc.country_id
group by match_no,  country_name
order by Count(match_no) desc
limit 2 ;

Select distinct match_no, country_name
From penalty_shootout ps
left join 	soccer_country sc
on ps.team_id = sc.country_id
where match_no = (
					Select match_no 
                    From penalty_shootout
                    group by match_no
                    order by Count(match_no) desc
					limit 1 
				 )
