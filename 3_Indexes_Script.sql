-- JVV 01/08/2024: Script Overview
-- This SQL script creates indexes on various columns across four different tables: users, surveys, questions, and responses.
-- to optimize query performance

-- Indexes on users Table

-- Index on user_first_name
-- Purpose: This index is created to speed up queries that filter or sort based on the user_first_name column.
CREATE INDEX idx_user_first_name ON users(user_first_name);

-- Index on user_email
-- Purpose: This index facilitates quicker search operations involving the user_email column.
CREATE INDEX idx_user_email ON users(user_email);

-- Index on surveys Table

-- Index on survey_name
-- Purpose: This index optimizes the performance of queries that filter or sort by the survey_name column.
CREATE INDEX idx_survey_name ON surveys(survey_name);

-- Indexes on questions Table

-- Index on question_text
-- Purpose: This index supports faster search and retrieval operations involving the question_text column.
CREATE INDEX idx_question_text ON questions(question_text);

-- Indexes on responses Table

-- Index on user_id
-- Purpose: This index is designed to enhance the efficiency of queries that join or filter by the user_id column.
CREATE INDEX idx_user_id ON responses(user_id);

-- Index on response_date
-- Purpose: This index improves the performance of queries that filter or sort by the response_date column.
CREATE INDEX idx_response_date ON responses(response_date);
