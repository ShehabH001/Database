CREATE TRIGGER book_translator_trigger
BEFORE INSERT OR UPDATE
ON translator_book
FOR EACH STATEMENT
EXECUTE FUNCTION translator_book_is_updated();