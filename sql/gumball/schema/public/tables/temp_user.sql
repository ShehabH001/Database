CREATE TYPE registration_type_enum AS ENUM (
    'EMAIL_PASSWORD',
    'GOOGLE',
    'FACEBOOK'
);

CREATE TABLE temp_user(
    "name" VARCHAR(100) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "country_code" VARCHAR(5) NULL,
    "phone" VARCHAR(16) NULL,
    "password" TEXT NULL,
    "registration_type" registration_type_enum  NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("email"),
    UNIQUE ("phone"),
    CHECK (LENGTH("name") BETWEEN 2 AND 100),
    CHECK (email ~ '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'),
    CHECK (country_code is NULL OR country_code ~ '^\+\d{1,3}$'),  -- started with + and 1 to 3 digits
    CHECK (phone is NULL OR (LENGTH(phone) BETWEEN 4 AND 15 AND phone ~ '^\d+$')),  -- length between 4 and 15 characters
    CHECK ("password" IS NULL OR LENGTH("password") BETWEEN 8 AND 255)
);