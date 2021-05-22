-- Write a SQL query to compute a list showing the number of substitutions that
-- happened in various stages of play for the entire tournament.

-- Not sure about the solution - should in in and out pair counted as 1 substitution??

SELECT 
    md.play_stage, COUNT(player_id) AS Num_of_Sub
FROM
    player_in_out io
        LEFT JOIN
    match_details md ON io.match_no = md.match_no
WHERE
    io.in_out = 'I'
GROUP BY md.play_stage;