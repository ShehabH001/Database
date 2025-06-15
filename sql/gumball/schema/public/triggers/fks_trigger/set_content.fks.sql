CREATE TRIGGER enforce_book_fk_on_set_content
BEFORE INSERT OR UPDATE ON set_content
FOR EACH ROW EXECUTE FUNCTION remote.check_book_foreign_key();