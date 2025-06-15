CREATE TRIGGER update_set_timestamp
BEFORE UPDATE  
ON "set"
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER set_is_updated
AFTER UPDATE OR INSERT OR DELETE  
ON set
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_user_tables();