CREATE TRIGGER enforce_user_fk_on_changes_of_user_tables
BEFORE INSERT OR UPDATE ON changes_of_user_tables
FOR EACH ROW EXECUTE FUNCTION remote.check_user_foreign_key();