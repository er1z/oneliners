DO $$
DECLARE tablenames text;
BEGIN    
    tablenames := string_agg('"' || tablename || '"', ', ') 
        FROM pg_tables WHERE schemaname = 'public';
    EXECUTE 'DROP TABLE ' || tablenames;
END; $$

