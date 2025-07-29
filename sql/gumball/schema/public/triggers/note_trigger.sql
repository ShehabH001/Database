CREATE TRIGGER update_note_timestamp
BEFORE UPDATE  
ON note
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

-- CREATE TRIGGER note_is_updated
-- AFTER UPDATE OR INSERT OR DELETE  
-- ON note
-- FOR EACH ROW
-- EXECUTE FUNCTION update_changes_of_user_book_tables();