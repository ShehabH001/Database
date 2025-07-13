-- This script creates a foreign table in PostgreSQL to access a remote table.

-- Create a foreign table that mirrors the remote table
CREATE FOREIGN TABLE remote.res_partner (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    company_id integer,
    phone_code_selection character varying(255),
    mobile character varying(255),
    -- user_password_hash TEXT NULL,
    registration_type Text  NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone
)

SERVER darwin_server
OPTIONS (
    schema_name 'public',  -- or whatever schema on remote server
    table_name 'res_partner'  -- the name of the remote table
);