SELECT 
    q.question_id,
    q.question_text,
    r.response_text AS response,
    COUNT(*) AS response_count
FROM 
    questions q
JOIN 
    responses r ON q.question_id = r.question_id
WHERE 
    q.survey_id = 1
GROUP BY 
    q.question_id,
    q.question_text,
    r.response_text
ORDER BY
	q.question_id,
	response_count DESC;