CREATE OR REPLACE FUNCTION rating_is_updated()
RETURNS TRIGGER AS $$
DECLARE
    current_version INT;
BEGIN
    IF TG_OP = 'UPDATE' THEN
        current_version := incrementVersion();
        NEW.last_updated := current_version;
    ELSIF TG_OP = 'INSERT' THEN 
        current_version := currentVersion();
    END IF;
    PERFORM general_tables_status_update(TG_TABLE_NAME, current_version);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;