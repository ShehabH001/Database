CREATE TRIGGER update_book_metadata_timestamp
BEFORE UPDATE  
ON book_metadata
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER book_metadata_is_updated
AFTER UPDATE OR INSERT OR DELETE
ON book_metadata
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_book_tables();