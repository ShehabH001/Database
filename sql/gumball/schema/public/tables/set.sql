CREATE TABLE "set"(
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "user_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "is_deleted" boolean DEFAULT FALSE NOT NULL,
    PRIMARY KEY ("id"),
    UNIQUE ("name", "user_id"), 
    CHECK (name != '')
);

DROP INDEX IF EXISTS set_idx;
CREATE INDEX set_idx ON set (user_id);
