CREATE TRIGGER update_token_timestamp
BEFORE UPDATE  
ON token
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER token_is_updated
AFTER UPDATE OR INSERT OR DELETE  
ON token
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_book_tables();