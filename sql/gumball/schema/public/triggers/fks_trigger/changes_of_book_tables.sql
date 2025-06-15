CREATE TRIGGER enforce_book_fk_on_changes_of_book_tables
BEFORE INSERT OR UPDATE ON changes_of_book_tables
FOR EACH ROW EXECUTE FUNCTION remote.check_book_foreign_key();