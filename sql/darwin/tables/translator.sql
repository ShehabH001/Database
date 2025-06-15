CREATE TABLE "translator"(
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "last_updated" INT NOT NULL DEFAULT incrementVersion(),
    "is_deleted" boolean DEFAULT NULL,
    PRIMARY KEY("id")
);