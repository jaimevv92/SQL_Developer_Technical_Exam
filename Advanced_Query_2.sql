SELECT 
    u.user_first_name,
    u.user_last_name,
    u.user_email,
    AVG(CAST(r.response_text AS DECIMAL)) AS average_response_score
FROM 
    responses r
JOIN 
    users u ON r.user_id = u.user_id
GROUP BY 
    u.user_id,  -- Group by user_id to avoid grouping by multiple columns
    u.user_first_name,
    u.user_last_name,
    u.user_email
ORDER BY 
    average_response_score DESC
LIMIT 3;