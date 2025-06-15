CREATE TABLE "book_tag"(
    "tag_id" INTEGER NOT NULL REFERENCES tag(id) ON DELETE CASCADE,
    "book_id" INTEGER NOT NULL REFERENCES book(id) ON DELETE CASCADE,
    "last_updated" INT NOT NULL DEFAULT incrementVersion(),
    "is_deleted" boolean DEFAULT NULL,
    PRIMARY KEY ("tag_id","book_id")
);

CREATE INDEX book_tag_idx ON book_tag(tag_id, book_id); 
