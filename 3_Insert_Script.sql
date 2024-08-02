-- JVV: 08/01/2024 SQL script that inserts sample Data for SQl Developer Technical Exam
-- Insert sample users
INSERT INTO users (user_first_name, user_last_name, user_email) VALUES 
('John', 'Doe', 'john.doe@example.com'), 
('Jane', 'Smith', 'jane.smith@example.com'), 
('Alice', 'Johnson', 'alice.johnson@example.com'),
('Bob', 'Brown', 'bob.brown@example.com'),
('Eve', 'Davis', 'eve.davis@example.com');

-- Insert sample surveys
INSERT INTO surveys (survey_name) VALUES ('Survey 1'), ('Survey 2'), ('Survey 3');

-- Insert sample questions
INSERT INTO questions (survey_id, question_text) VALUES 
(1, 'How would you rate our service?'),
(1, 'How likely are you to recommend us?'),
(1, 'How would you rate what you liked the most about our service?'),
(1, 'How would you rate the areas where we can improve?'),
(1, 'How satisfied are you with the overall experience?'),
(2, 'How satisfied are you with our product?'),
(2, 'How easy was it to use our product?'),
(2, 'How likely are you to purchase again?'),
(2, 'How would you rate the value for money?'),
(2, 'How likely are you to recommend our product?'),
(3, 'How was your overall experience?'),
(3, 'How satisfied are you with the customer support?'),
(3, 'How would you rate the areas where we can improve?'),
(3, 'How likely are you to use our service again?'),
(3, 'How would you rate the quality of our service?');

-- Insert sample responses
INSERT INTO responses (user_id, question_id, response_text) VALUES 
(1, 1, '4'), (1, 2, '5'), (1, 3, '4'), (1, 4, '3'), (1, 5, '5'),
(1, 6, '4'), (1, 7, '3'), (1, 8, '5'), (1, 9, '4'), (1, 10, '5'),
(1, 11, '4'), (1, 12, '4'), (1, 13, '3'), (1, 14, '5'), (1, 15, '4'),
(2, 1, '5'), (2, 2, '4'), (2, 3, '5'), (2, 4, '4'), (2, 5, '5'),
(2, 6, '3'), (2, 7, '4'), (2, 8, '5'), (2, 9, '3'), (2, 10, '4'),
(2, 11, '4'), (2, 12, '5'), (2, 13, '4'), (2, 14, '5'), (2, 15, '5'),
(3, 1, '5'), (3, 2, '5'), (3, 3, '4'), (3, 4, '3'), (3, 5, '5'),
(3, 6, '4'), (3, 7, '4'), (3, 8, '5'), (3, 9, '5'), (3, 10, '5'),
(3, 11, '5'), (3, 12, '4'), (3, 13, '3'), (3, 14, '5'), (3, 15, '5'),
(4, 1, '4'), (4, 2, '5'), (4, 3, '3'), (4, 4, '4'), (4, 5, '4'),
(4, 6, '3'), (4, 7, '4'), (4, 8, '4'), (4, 9, '4'), (4, 10, '5'),
(4, 11, '4'), (4, 12, '5'), (4, 13, '4'), (4, 14, '5'), (4, 15, '4'),
(5, 1, '5'), (5, 2, '5'), (5, 3, '5'), (5, 4, '4'), (5, 5, '5'),
(5, 6, '5'), (5, 7, '5'), (5, 8, '5'), (5, 9, '5'), (5, 10, '5'),
(5, 11, '5'), (5, 12, '5'), (5, 13, '4'), (5, 14, '5'), (5, 15, '5');
