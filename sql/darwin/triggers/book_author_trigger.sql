CREATE TRIGGER book_author_trigger
BEFORE INSERT OR UPDATE
ON author_book
FOR EACH STATEMENT
EXECUTE FUNCTION author_book_is_updated();