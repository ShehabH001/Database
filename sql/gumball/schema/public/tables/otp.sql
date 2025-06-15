CREATE TABLE otp(
    "temp_user_email" VARCHAR(255) NOT NULL,
    "code" VARCHAR(10) NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- This will be updated by the trigger
    PRIMARY KEY ("temp_user_email"),
    CONSTRAINT fk_otp_temp_user
        FOREIGN KEY (temp_user_email) 
        REFERENCES temp_user (email) 
        ON DELETE CASCADE
);