CREATE TRIGGER enforce_user_fk_on_reading_progress
BEFORE INSERT OR UPDATE ON reading_progress
FOR EACH ROW EXECUTE FUNCTION remote.check_user_foreign_key();


CREATE TRIGGER enforce_book_fk_on_reading_progress
BEFORE INSERT OR UPDATE ON reading_progress
FOR EACH ROW EXECUTE FUNCTION remote.check_book_foreign_key();