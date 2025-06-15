CREATE TYPE book_text_direction_enum AS ENUM (
    'LTR',
    'RTL'
);

CREATE TABLE "book_metadata"(
    "book_id" INTEGER NOT NULL,
    "page_count" INTEGER NOT NULL,
    "chapter_count" INTEGER NOT NULL,
    "book_encoding" TEXT NOT NULL,
    "book_index" TEXT NOT NULL,
    "target_links" TEXT NOT NULL,
    "text_direction" book_text_direction_enum NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "is_deleted" boolean DEFAULT FALSE NOT NULL,
    UNIQUE ("book_id"),
    CHECK (page_count > 0),
    CHECK (chapter_count > 0)
);

DROP INDEX IF EXISTS book_metadata_idx;
CREATE INDEX book_metadata_idx ON book_metadata(book_id);