CREATE TABLE "rating"(
    "book_id" INTEGER NOT NULL REFERENCES book(id) ON DELETE CASCADE,
    "user_id" INTEGER NOT NULL,
    "rate" DECIMAL(8, 2) NOT NULL,
    "review" TEXT NOT NULL,
    "last_updated" INT NOT NULL DEFAULT incrementVersion(),
    "is_deleted" boolean DEFAULT NULL,
    PRIMARY KEY("book_id", "user_id")
);