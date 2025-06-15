CREATE TABLE "annotation"(
    "id" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,
    "book_id" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    UNIQUE ("user_id", "book_id")   -- must (for relations between this table and bookmarks and highlights and notes)
);

DROP INDEX IF EXISTS annotations_idx;
CREATE INDEX annotations_idx ON annotation (user_id, book_id);