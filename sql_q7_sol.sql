-- 7. Write a SQL query to find all the venues where matches with penalty shootouts were
-- played.

Select Distinct mm.match_no, ven.venue_id, ven.venue_name
From penalty_shootout ps

inner join match_mast mm
on ps.match_no = mm.match_no

inner join soccer_venue ven
on mm.venue_id = ven.venue_id

order by mm.match_no;



