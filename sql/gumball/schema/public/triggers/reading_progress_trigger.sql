CREATE TRIGGER update_reading_progress_timestamp
BEFORE UPDATE  
ON reading_progress
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER reading_progress_is_updated
AFTER UPDATE OR INSERT OR DELETE  
ON reading_progress
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_user_book_tables(); 