CREATE TABLE "highlight"(
    "id" SERIAL NOT NULL,
    "annotation_id" INTEGER NOT NULL,
    "start_index" INTEGER NOT NULL,
    "end_index" INTEGER NOT NULL,
    "text" TEXT NOT NULL,
    "color" INTEGER NOT NULL,
    "page_number" INTEGER NOT NULL,
    "chapter_number" INTEGER NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "is_deleted" boolean DEFAULT FALSE NOT NULL,
    PRIMARY KEY ("id"),
    CONSTRAINT fk_annotations_highlight
        FOREIGN KEY (annotation_id) REFERENCES annotation (id)
        ON DELETE CASCADE  
        ON UPDATE CASCADE,
    CHECK (start_index >= 0),
    CHECK (end_index >= start_index),
    CHECK (page_number >= 0),
    CHECK (chapter_number >= 0)
);

DROP INDEX IF EXISTS highlight_idx;
CREATE INDEX highlight_idx ON highlight(id);