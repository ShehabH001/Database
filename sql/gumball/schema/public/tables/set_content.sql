CREATE TABLE "set_content"(
    "set_id" INTEGER NOT NULL,
    "book_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "is_deleted" boolean DEFAULT FALSE NOT NULL,
    PRIMARY KEY ("set_id","book_id"),
    CONSTRAINT fk_set_set_content
        FOREIGN KEY (set_id) REFERENCES set (id)
        ON DELETE CASCADE  
        ON UPDATE CASCADE  
);

DROP INDEX IF EXISTS set_content_idx;
CREATE INDEX set_content_idx ON set_content (set_id);
