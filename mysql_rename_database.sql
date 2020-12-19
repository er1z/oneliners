--
-- DON'T *****EVER***** SKIP DELIMITER INSTRUCTION
-- once again, NEVER SKIP DELIMITER

DELIMITER //
DROP PROCEDURE IF EXISTS rename_db;
CREATE PROCEDURE rename_db(IN old_db VARCHAR(100), IN new_db VARCHAR(100))
BEGIN
    DECLARE current_table VARCHAR(100);
    DECLARE done INT DEFAULT 0;
    DECLARE old_tables CURSOR FOR select table_name from information_schema.tables where table_schema = old_db;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    SET @output = CONCAT('DROP SCHEMA IF EXISTS ', new_db, ';');
PREPARE stmt FROM @output;
EXECUTE stmt;

SET @output = CONCAT('CREATE SCHEMA IF NOT EXISTS ', new_db, ';');
PREPARE stmt FROM @output;
EXECUTE stmt;

OPEN old_tables;
REPEAT
FETCH old_tables INTO current_table;
        IF NOT done THEN
        SET @output = CONCAT('alter table ', old_db, '.', current_table, ' rename ', new_db, '.', current_table, ';');
PREPARE stmt FROM @output;
EXECUTE stmt;

END IF;
    UNTIL done END REPEAT;

CLOSE old_tables;

END//
delimiter ;

-- call
call rename_db('old', 'new');
