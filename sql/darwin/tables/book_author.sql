
CREATE TABLE "book_author"(
    "author_id" INTEGER NOT NULL REFERENCES author(id) ON DELETE CASCADE,
    "book_id" INTEGER NOT NULL REFERENCES book(id) ON DELETE CASCADE,
    "last_updated" INT NOT NULL DEFAULT incrementVersion(),
    "is_deleted" boolean DEFAULT NULL,
    PRIMARY KEY ("author_id","book_id")
);

CREATE INDEX author_book_idx ON author_book(author_id, book_id);
