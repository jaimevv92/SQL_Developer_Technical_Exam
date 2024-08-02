SELECT 
    s.survey_name,
    AVG(CAST(r.response_text AS DECIMAL)) AS average_score
FROM 
    surveys s
JOIN 
    questions q ON s.survey_id = q.survey_id
JOIN 
    responses r ON q.question_id = r.question_id
WHERE 
    r.response_text BETWEEN '1' AND '5' 
GROUP BY 
    s.survey_name;