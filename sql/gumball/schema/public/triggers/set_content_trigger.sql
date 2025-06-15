CREATE TRIGGER update_set_content_timestamp
BEFORE UPDATE  
ON set_content
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER set_content_is_updated
AFTER UPDATE OR INSERT OR DELETE  
ON set_content
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_user_tables();