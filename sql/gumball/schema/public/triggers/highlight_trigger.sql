CREATE TRIGGER update_highlight_timestamp
BEFORE UPDATE  
ON highlight
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER highlight_is_updated
AFTER UPDATE OR INSERT OR DELETE  
ON highlight
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_user_book_tables();