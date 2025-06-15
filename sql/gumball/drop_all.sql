-- TRIGGERs
DROP TRIGGER IF EXISTS update_book_metadata_timestamp on book_metadata;
DROP TRIGGER IF EXISTS book_metadata_is_updated on book_metadata;

DROP TRIGGER IF EXISTS update_bookmark_timestamp on bookmark;
DROP TRIGGER IF EXISTS bookmark_is_updated on bookmark;

DROP TRIGGER IF EXISTS update_highlight_timestamp on highlight;
DROP TRIGGER IF EXISTS highlight_is_updated on highlight;

DROP TRIGGER IF EXISTS update_note_timestamp on note;
DROP TRIGGER IF EXISTS note_is_updated on note;

DROP TRIGGER IF EXISTS update_otp_timestamp on otp;

DROP TRIGGER IF EXISTS update_reading_progress_timestamp on reading_progress;
DROP TRIGGER IF EXISTS reading_progress_is_updated on reading_progress;

DROP TRIGGER IF EXISTS update_saved_book_timestamp on saved_book;
DROP TRIGGER IF EXISTS saved_book_is_updated on saved_book;

DROP TRIGGER IF EXISTS update_set_content_timestamp on set_content;
DROP TRIGGER IF EXISTS set_content_is_updated on set_content;

DROP TRIGGER IF EXISTS update_set_timestamp on "set";
DROP TRIGGER IF EXISTS set_is_updated on "set";

DROP TRIGGER IF EXISTS update_temp_user_timestamp on temp_user;

DROP TRIGGER IF EXISTS update_token_timestamp on token;
DROP TRIGGER IF EXISTS token_is_updated on token;

-- FOREGIN KEY TRIGGERS

DROP TRIGGER IF EXISTS enforce_user_fk_on_annotations on annotation;
DROP TRIGGER IF EXISTS enforce_book_fk_on_annotations on annotation;

DROP TRIGGER IF EXISTS enforce_book_fk_on_book_metadata on book_metadata;

DROP TRIGGER IF EXISTS enforce_book_fk_on_changes_of_book_tables on changes_of_book_tables;

DROP TRIGGER IF EXISTS enforce_user_fk_on_changes_of_user_book_tables on changes_of_user_book_tables;
DROP TRIGGER IF EXISTS enforce_book_fk_on_changes_of_user_book_tables on changes_of_user_book_tables;

DROP TRIGGER IF EXISTS enforce_user_fk_on_changes_of_user_tables on changes_of_user_tables;

DROP TRIGGER IF EXISTS enforce_user_fk_on_reading_progress on reading_progress;
DROP TRIGGER IF EXISTS enforce_book_fk_on_reading_progress on reading_progress;

DROP TRIGGER IF EXISTS enforce_user_fk_on_saved_book on saved_book;
DROP TRIGGER IF EXISTS enforce_book_fk_on_saved_book on saved_book;

DROP TRIGGER IF EXISTS enforce_book_fk_on_set_content on set_content;

DROP TRIGGER IF EXISTS enforce_user_fk_on_set on "set";

DROP TRIGGER IF EXISTS enforce_book_fk_on_token on token;


-- tigger functions
DROP FUNCTION IF EXISTS update_timestamp;
DROP FUNCTION IF EXISTS update_changes_of_book_tables;
DROP FUNCTION IF EXISTS update_changes_of_user_book_tables;
DROP FUNCTION IF EXISTS update_changes_of_user_tables;

DROP FUNCTION IF EXISTS remote.check_user_foreign_key;
DROP FUNCTION IF EXISTS remote.check_book_foreign_key;

-- tables
DROP FOREIGN TABLE IF EXISTS remote.res_partner;
DROP FOREIGN TABLE IF EXISTS remote.book_info;
DROP TABLE IF EXISTS "bookmark";
DROP TABLE IF EXISTS "highlight";
DROP TABLE IF EXISTS "note";
DROP TABLE IF EXISTS "annotation";
DROP TABLE IF EXISTS "otp";
DROP TABLE IF EXISTS "reading_progress";
DROP TABLE IF EXISTS "saved_book";
DROP TABLE IF EXISTS "set_content";
DROP TABLE IF EXISTS "set";
DROP TABLE IF EXISTS "temp_user";
DROP TYPE IF EXISTS registration_type_enum;
DROP TABLE IF EXISTS "token";
DROP TABLE IF EXISTS "book_metadata";
DROP TYPE IF EXISTS book_text_direction_enum;
DROP TABLE IF EXISTS "changes_of_book_tables";
DROP TABLE IF EXISTS "changes_of_general_tables";
DROP TABLE IF EXISTS "changes_of_user_book_tables";
DROP TABLE IF EXISTS "changes_of_user_tables";

-- connection
DROP USER MAPPING IF EXISTS FOR CURRENT_USER SERVER darwin_server;
DROP SERVER IF EXISTS darwin_server;
DROP EXTENSION IF EXISTS postgres_fdw;


