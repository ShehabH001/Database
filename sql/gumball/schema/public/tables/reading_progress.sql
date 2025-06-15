CREATE TABLE "reading_progress"(
    "user_id" INTEGER NOT NULL,
    "book_id" INTEGER NOT NULL,
    "progress" INTEGER NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("user_id", "book_id"),
    CHECK (progress BETWEEN 0 AND 100)
);

DROP INDEX IF EXISTS reading_progress_idx;
CREATE INDEX reading_progress_idx ON reading_progress (user_id);
