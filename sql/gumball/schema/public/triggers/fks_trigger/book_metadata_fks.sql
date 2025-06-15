CREATE TRIGGER enforce_book_fk_on_book_metadata
BEFORE INSERT OR UPDATE ON book_metadata
FOR EACH ROW EXECUTE FUNCTION remote.check_book_foreign_key();