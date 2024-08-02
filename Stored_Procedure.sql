DELIMITER //

CREATE PROCEDURE CalculateSurveyScore(IN surveyID INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE responseText VARCHAR(255);
    DECLARE totalScore INT DEFAULT 0;
    
    -- Declare a cursor to iterate over each response for the given survey
    DECLARE cur CURSOR FOR
    SELECT r.response_text
    FROM questions q
    JOIN responses r ON q.question_id = r.question_id
    WHERE q.survey_id = surveyID;
    
    -- Declare a continue handler to handle the end of the cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Open the cursor
    OPEN cur;
    
    -- Loop through all the responses
    read_loop: LOOP
        FETCH cur INTO responseText;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Calculate the score for the response based on predefined weights
        SET totalScore = totalScore + CAST(responseText AS UNSIGNED);
    END LOOP;
    
    -- Close the cursor
    CLOSE cur;
    
    -- Output the total score
    SELECT totalScore AS SurveyScore;
END //

DELIMITER ;
