CREATE TABLE "token"(
    "id" SERIAL NOT NULL,
    "book_id" INTEGER NOT NULL,
    "sequence" INTEGER NOT NULL,
    "content" TEXT NOT NULL,
    "size" DECIMAL(10,2) NOT NULL,
    "start_page" INTEGER NOT NULL,
    "end_page" INTEGER NOT NULL,
    "start_chapter" INTEGER NOT NULL,
    "end_chapter" INTEGER NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "is_deleted" boolean DEFAULT FALSE NOT NULL,
    PRIMARY KEY ("id"),
        CHECK (sequence >= 0),
        CHECK (end_page >= start_page),
        CHECK (start_chapter >= end_chapter)
);

-- For this query
-- WHERE book_id = X 
-- AND token_sequence = Y
-- AND updated_at > Z
DROP INDEX IF EXISTS token_idx;
CREATE INDEX token_idx ON token (book_id, sequence, updated_at);