CREATE TABLE "book_category"(
    "book_id" INTEGER NOT NULL REFERENCES book(id) ON DELETE CASCADE,
    "category_id" INTEGER NOT NULL REFERENCES category(id) ON DELETE CASCADE,
    "last_updated" INT NOT NULL DEFAULT incrementVersion(),
    "is_deleted" boolean DEFAULT NULL,
     PRIMARY KEY ("category_id", "book_id")
);

CREATE INDEX book_category_idx ON book_category(category_id, book_id); 
