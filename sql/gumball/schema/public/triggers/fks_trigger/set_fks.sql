CREATE TRIGGER enforce_user_fk_on_set
BEFORE INSERT OR UPDATE ON "set"
FOR EACH ROW EXECUTE FUNCTION remote.check_user_foreign_key();