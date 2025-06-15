CREATE TRIGGER enforce_user_fk_on_annotations
BEFORE INSERT OR UPDATE ON annotation
FOR EACH ROW EXECUTE FUNCTION remote.check_user_foreign_key();

CREATE TRIGGER enforce_book_fk_on_annotations
BEFORE INSERT OR UPDATE ON annotation
FOR EACH ROW EXECUTE FUNCTION remote.check_book_foreign_key();