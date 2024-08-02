CREATE VIEW SurveyScores AS
SELECT 
    s.survey_id,
    s.survey_name,
    COALESCE(SUM(CAST(r.response_text AS UNSIGNED)), 0) AS total_score
FROM 
    surveys s
JOIN 
    questions q ON s.survey_id = q.survey_id
JOIN 
    responses r ON q.question_id = r.question_id
GROUP BY 
    s.survey_id, s.survey_name;
