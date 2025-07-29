CREATE TABLE "bookmark"(
    "id" SERIAL NOT NULL,
    "annotation_id" INTEGER NOT NULL,
    -- "start_index" INTEGER NOT NULL,
    -- "end_index" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "page_number" INTEGER NOT NULL,
    "chapter_number" INTEGER NOT NULL,
    "page_number_in_chapter" INTEGER NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "is_deleted" boolean DEFAULT FALSE NOT NULL,
    PRIMARY KEY ("id"),
    CONSTRAINT fk_annotations_bookmark
        FOREIGN KEY (annotation_id) REFERENCES annotation (id)
        ON DELETE CASCADE  
        ON UPDATE CASCADE,
    -- CHECK (start_index >= 0),
    -- CHECK (end_index >= start_index),
    UNIQUE (annotation_id, page_number_in_chapter, chapter_number),
    CHECK (page_number >= 0),
    CHECK (chapter_number >= 0)
);

DROP INDEX IF EXISTS bookmark_idx;
CREATE INDEX bookmark_idx ON bookmark(id);
