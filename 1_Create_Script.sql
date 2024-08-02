-- JVV 08/01/2024: Table creation Script that complies with the requirements for the SQL Developer Technical Exam

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_first_name VARCHAR(255) NOT NULL,
    user_last_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE surveys (
    survey_id INT PRIMARY KEY AUTO_INCREMENT,
    survey_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE questions (
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    survey_id INT,
    question_text VARCHAR(255) NOT NULL,
    FOREIGN KEY (survey_id) REFERENCES surveys(survey_id)
);

CREATE TABLE responses (
    response_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    question_id INT,
    response_text TEXT,
    response_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (question_id) REFERENCES questions(question_id)
);