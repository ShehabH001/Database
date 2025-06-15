CREATE TABLE "saved_book"(
    "user_id" INTEGER NOT NULL,
    "book_id" INTEGER NOT NULL,
    "type" VARCHAR(1) NOT NULL,  -- WHISH LIST = 'W',  READ_LATER = 'L',
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "is_deleted" boolean DEFAULT FALSE NOT NULL,
    PRIMARY KEY ("user_id", "book_id", "type"),
    CHECK (type IN ('W', 'L'))
);

DROP INDEX IF EXISTS saved_idx;
CREATE INDEX saved_idx ON saved_book (user_id);
