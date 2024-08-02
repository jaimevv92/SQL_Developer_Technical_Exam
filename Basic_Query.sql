-- JVV 01/08/2024: Script Overview
-- This SQL script creates indexes on various columns across four different tables: users, surveys, questions, and responses.
-- to optimize query performance
SELECT 
    s.survey_name, 
    q.question_text, 
    r.response_text
FROM 
    surveys s,
    questions q,
    responses r
WHERE 
    s.survey_id = q.survey_id 
    AND q.question_id = r.question_id 
    AND s.survey_name = 'Survey 1';