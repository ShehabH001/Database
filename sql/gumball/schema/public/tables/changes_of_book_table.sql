CREATE TABLE changes_of_book_tables(
    "table_name" TEXT NOT NULL,
    "book_id" INTEGER NOT NULL, 
    "updated_at" TIMESTAMP NOT NULL,
    PRIMARY KEY ("table_name","book_id")
);