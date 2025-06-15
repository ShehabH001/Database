CREATE TABLE changes_of_user_book_tables (
    "table_name" TEXT NOT NULL,
    "user_id" INTEGER NOT NULL,
    "book_id" INTEGER NOT NULL,
    "updated_at" TIMESTAMP NOT NULL,
    PRIMARY KEY ("table_name", "user_id", "book_id")
);