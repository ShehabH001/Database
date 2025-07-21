#!/bin/bash

# Database connection parameters
DB_HOST=${DB_HOST:-"4.227.202.127"}  # Default to localhost if not set
DB_PORT=${DB_PORT:-"5432"}      # Default PostgreSQL port
DB_USER=${DB_USER:-"postgres"}   # Default PostgreSQL superuser
DB_NAME=${DB_NAME:-"gumball"}    # Default database name
DB_PASSWORD=${DB_PASSWORD:-"a26(7K08t1p_"}  # Fallback password

# Export password for psql
export PGPASSWORD=$DB_PASSWORD

FILES=(
  "gumball/schema/public/tables/annotations.sql"
  "gumball/schema/public/tables/bookmark.sql"
  "gumball/schema/public/tables/highlight.sql"
  "gumball/schema/public/tables/note.sql"
  "gumball/schema/public/triggers/annotation_trigger.sql"
)

# Exit on error
set -e

# Execute each file
for file in "${FILES[@]}"; do
  echo "Executing $file..."
  psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f "sql/$file"
done

# Unset the password for security
unset PGPASSWORD

echo "All SQL files executed successfully."

