CREATE OR REPLACE FUNCTION remote.check_book_foreign_key()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM remote.book_info 
        WHERE id = NEW.book_id
    ) THEN
        RAISE EXCEPTION 'Foreign key violation: book_id % does not exist', NEW.book_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;