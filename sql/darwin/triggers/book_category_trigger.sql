CREATE TRIGGER book_category_trigger
BEFORE INSERT OR UPDATE 
ON book_category
FOR EACH STATEMENT
EXECUTE FUNCTION book_category_is_updated();