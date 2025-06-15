CREATE OR REPLACE FUNCTION update_changes_of_user_book_tables()
RETURNS TRIGGER AS $$
DECLARE
    v_updated_at TIMESTAMP;
BEGIN
    IF TG_OP = 'DELETE' THEN
        v_updated_at := NOW();
    ELSE
        v_updated_at := NEW.updated_at;
    END IF;

    INSERT INTO changes_of_user_book_tables (table_name, user_id, book_id, updated_at)
    VALUES ( TG_TABLE_NAME ,NEW.user_id, NEW.book_id, v_updated_at )
    ON CONFLICT (table_name, user_id, book_id) 
    DO UPDATE SET updated_at = v_updated_at;

    IF TG_OP = 'DELETE' THEN
        RETURN OLD;
    ELSE
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;