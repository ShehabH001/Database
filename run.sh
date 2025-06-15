#!/bin/bash

# Define the execution order


FILES=(
  # 1 - Drop all tables
  "gumball/drop_all.sql"
  # 2 - Create remote schema
  "gumball/schema/remote/creation.sql"
  # 3 - Create foreign data wrapper
  "gumball/connection/foreign_data_wrapper/darwin_server.sql"
  # 4 - Create tables in remote schema
  "gumball/schema/remote/tables/user.sql"
  "gumball/schema/remote/tables/book_info.sql"
  # 5 - Create trigger functions in remote schema
  "gumball/schema/remote/trigger_functions/check_user_foreign_key.sql"
  "gumball/schema/remote/trigger_functions/check_book_foreign_key.sql"
  # 6 - Create tables in public schema (order matters)
  "gumball/schema/public/tables/changes_of_book_table.sql"
  "gumball/schema/public/tables/changes_of_general_tables.sql"
  "gumball/schema/public/tables/changes_of_user_book_tables.sql"
  "gumball/schema/public/tables/changes_of_user_tables.sql"
  "gumball/schema/public/tables/annotations.sql"
  "gumball/schema/public/tables/bookmark.sql"
  "gumball/schema/public/tables/highlight.sql"
  "gumball/schema/public/tables/note.sql"
  "gumball/schema/public/tables/set.sql"
  "gumball/schema/public/tables/set_content.sql"
  "gumball/schema/public/tables/book_metadata.sql"
  "gumball/schema/public/tables/temp_user.sql"
  "gumball/schema/public/tables/otp.sql"
  "gumball/schema/public/tables/reading_progress.sql"
  "gumball/schema/public/tables/saved_book.sql"
  "gumball/schema/public/tables/token.sql"
  # 7 - Create foreign key triggers in public schema
  "gumball/schema/public/triggers/fks_trigger/annotations_fks.sql"
  "gumball/schema/public/triggers/fks_trigger/book_metadata_fks.sql"
  "gumball/schema/public/triggers/fks_trigger/changes_of_book_tables.sql"
  "gumball/schema/public/triggers/fks_trigger/changes_of_user_book_tables.sql"
  "gumball/schema/public/triggers/fks_trigger/changes_of_user_tables_fks.sql"
  "gumball/schema/public/triggers/fks_trigger/reading_progress_fks.sql"
  "gumball/schema/public/triggers/fks_trigger/saved_book_fks.sql"
  "gumball/schema/public/triggers/fks_trigger/set_content.fks.sql"
  "gumball/schema/public/triggers/fks_trigger/set_fks.sql"
  "gumball/schema/public/triggers/fks_trigger/token_fks.sql"
  # 9 - Create trigger functions in public schema
  "gumball/schema/public/trigger_functions/update_changes_of_book_tables.sql"
  "gumball/schema/public/trigger_functions/update_changes_of_user_book_tables.sql"
  "gumball/schema/public/trigger_functions/update_changes_of_user_tables.sql"
  "gumball/schema/public/trigger_functions/update_timestamp.sql"
  # 8 - Create trigger in public schema
  "gumball/schema/public/triggers/book_metadata_trigger.sql"
  "gumball/schema/public/triggers/bookmark_trigger.sql"
  "gumball/schema/public/triggers/highlight_trigger.sql"
  "gumball/schema/public/triggers/note_trigger.sql"
  "gumball/schema/public/triggers/otp_trigger.sql"
  "gumball/schema/public/triggers/reading_progress_trigger.sql"
  "gumball/schema/public/triggers/saved_book_trigger.sql"
  "gumball/schema/public/triggers/set_content_trigger.sql"
  "gumball/schema/public/triggers/set_trigger.sql"
  "gumball/schema/public/triggers/temp_user_trigger.sql"
  "gumball/schema/public/triggers/token_trigger.sql"
)

PGPASSWORD=${PGPASSWORD:-"123456"}  # Fallback if not set in env
export PGPASSWORD

# Exit on error
set -e

# Execute each file
for file in "${FILES[@]}"; do
  echo "Executing $file..."
  psql -U postgres -d Gumball -f "sql/$file"
done

unset PGPASSWORD

echo "All SQL files executed successfully."