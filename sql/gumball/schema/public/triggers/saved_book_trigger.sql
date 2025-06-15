CREATE TRIGGER update_saved_book_timestamp
BEFORE UPDATE  
ON saved_book
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER saved_book_is_updated
AFTER UPDATE OR INSERT OR DELETE  
ON saved_book
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_user_tables();