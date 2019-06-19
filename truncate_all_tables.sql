
SET FOREIGN_KEY_CHECKS=0;

-- paste result of query below here
SELECT Concat('TRUNCATE TABLE ',table_schema,'.',TABLE_NAME, ';') FROM INFORMATION_SCHEMA.TABLES where table_schema in (db1_name,db2_name);

SET FOREIGN_KEY_CHECKS=1;
