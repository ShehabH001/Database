CREATE TRIGGER update_bookmark_timestamp
BEFORE UPDATE  
ON bookmark
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER bookmark_is_updated
AFTER UPDATE OR INSERT OR DELETE
ON bookmark
FOR EACH ROW
EXECUTE FUNCTION update_changes_of_user_book_tables();