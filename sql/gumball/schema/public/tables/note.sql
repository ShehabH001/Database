CREATE TABLE "note"(
    "id" SERIAL NOT NULL,
    "annotation_id" INTEGER NOT NULL,
    "start_index" INTEGER NOT NULL,
    "end_index" INTEGER NOT NULL,
    "content" TEXT NOT NULL,
    "page_number" INTEGER NOT NULL,
    "chapter_number" INTEGER NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "is_deleted" boolean DEFAULT FALSE NOT NULL,
    PRIMARY KEY ("id"),
    CONSTRAINT fk_annotations_note
        FOREIGN KEY (annotation_id) REFERENCES annotation (id)
        ON DELETE CASCADE  
        ON UPDATE CASCADE,
    CHECK (start_index >= 0),
    CHECK (end_index >= start_index),
    CHECK (page_number >= 0),
    CHECK (chapter_number >= 0)
);

DROP INDEX IF EXISTS note_idx;
CREATE INDEX note_idx ON note(id);