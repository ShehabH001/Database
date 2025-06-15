CREATE TABLE "book_translator"(
    "translator_id" INTEGER NOT NULL REFERENCES translator(id) ON DELETE CASCADE,
    "book_id" INTEGER NOT NULL REFERENCES book(id) ON DELETE CASCADE,
    "last_updated" INT NOT NULL DEFAULT incrementVersion(),
    "is_deleted" boolean DEFAULT NULL,
    PRIMARY KEY ("translator_id","book_id")
);

CREATE INDEX idx_translator_book ON translator_book(translator_id, book_id); 
