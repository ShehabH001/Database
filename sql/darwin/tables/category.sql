CREATE TABLE "category"(
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "image" TEXT NULL,
    "last_updated" INT NOT NULL DEFAULT incrementVersion(),
    "is_deleted" boolean DEFAULT NULL,
    PRIMARY KEY ("id")
);