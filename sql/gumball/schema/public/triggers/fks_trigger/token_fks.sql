CREATE TRIGGER enforce_book_fk_on_token
BEFORE INSERT OR UPDATE ON token
FOR EACH ROW EXECUTE FUNCTION remote.check_book_foreign_key();