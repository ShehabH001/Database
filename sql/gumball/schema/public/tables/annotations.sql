DROP TABLE IF EXISTS "bookmark";
DROP TABLE IF EXISTS "highlight";
DROP TABLE IF EXISTS "note";
DROP TABLE IF EXISTS "annotation";

CREATE TABLE "annotation"(
    "id" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,
    "book_id" INTEGER NOT NULL,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id"),
    UNIQUE ("user_id", "book_id")   -- must (for relations between this table and bookmarks and highlights and notes)
);

DROP INDEX IF EXISTS annotations_idx;
CREATE INDEX annotations_idx ON annotation (user_id, book_id);