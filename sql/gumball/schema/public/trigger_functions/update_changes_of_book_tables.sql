CREATE OR REPLACE FUNCTION update_changes_of_book_tables()
RETURNS TRIGGER AS $$
DECLARE
    v_updated_at TIMESTAMP;
BEGIN
    IF TG_OP = 'DELETE' THEN
        v_updated_at := NOW();
    ELSE
        v_updated_at := NEW.updated_at;
    END IF;

    INSERT INTO changes_of_book_tables (table_name,book_id, updated_at)
    VALUES (TG_TABLE_NAME, NEW.book_id, v_updated_at)
    ON CONFLICT (table_name)
    DO UPDATE SET updated_at = v_updated_at;

    IF TG_OP = 'DELETE' THEN
        RETURN OLD;
    ELSE
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;