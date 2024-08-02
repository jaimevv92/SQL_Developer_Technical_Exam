-- JVV: 08/01/2024 Basic Query to retrive all responses for a given survey, including survey name, question text
-- and response text.

-- Query Optimizations: for this query we will create a set of new indexes.

CREATE INDEX idx_surveys_survey_id ON surveys (survey_id);
CREATE INDEX idx_questions_survey_id ON questions (survey_id);
CREATE INDEX idx_questions_question_id ON questions (question_id);
CREATE INDEX idx_responses_question_id ON responses (question_id);

-- This query was also optimized. unlike the previous query, this query uses explicit JOINS and with the creation
-- of new indexes

SELECT 
    s.survey_name, 
    q.question_text, 
    r.response_text
FROM 
    surveys s
JOIN 
    questions q ON s.survey_id = q.survey_id
JOIN 
    responses r ON q.question_id = r.question_id
WHERE 
    s.survey_name = 'Survey 1';