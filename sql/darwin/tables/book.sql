CREATE TABLE "book"(
    "id" SERIAL NOT NULL,
    "international_num" TEXT NULL,
    "language" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "cover" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "summary" TEXT NOT NULL,

    "pages_number" INTEGER NOT NULL,
    "chapters_number" INTEGER NOT NULL,
    "encoding" TEXT NOT NULL,
    "index" TEXT NOT NULL,
    "target_links" TEXT NOT NULL,
    "text_direction" TEXT NOT NULL,

    "subscription_id" INTEGER NOT NULL REFERENCES subscription(id) ON DELETE CASCADE,
    "publisher_id" INTEGER NOT NULL REFERENCES publisher(id) ON DELETE CASCADE,
    "release_date" TEXT NOT NULL,
    "last_updated" INT NOT NULL DEFAULT incrementVersion(),
    "is_deleted" boolean DEFAULT NULL,
    PRIMARY KEY ("id")
);

CREATE INDEX book_idx ON book (id);
