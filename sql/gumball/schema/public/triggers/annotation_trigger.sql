CREATE TRIGGER annotation_is_updated
AFTER UPDATE OR INSERT OR DELETE
ON annotation
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_user_book_tables();

CREATE TRIGGER update_annotation_timestamp
BEFORE UPDATE  
ON annotation
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();