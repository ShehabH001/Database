CREATE OR REPLACE FUNCTION remote.check_user_foreign_key()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM remote.res_partner 
        WHERE id = NEW.user_id
    ) THEN
        RAISE EXCEPTION 'Foreign key violation: user_id % does not exist', NEW.user_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;