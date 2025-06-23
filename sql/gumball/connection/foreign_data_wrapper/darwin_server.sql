-- This script creates a foreign data wrapper connection to a remote PostgreSQL server.
-- and sets up a foreign table that mirrors a remote table. It also includes commented-out code

-- 1. Install the foreign data wrapper extension (if not already installed)
CREATE EXTENSION IF NOT EXISTS postgres_fdw;

-- 2. Create a server connection to your remote PostgreSQL server
CREATE SERVER darwin_server
FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (
    host '192.168.1.19',
    port '5432',  -- default PostgreSQL port
    dbname 'Alex-DB'
);

-- 3. Create user mapping with remote credentials
CREATE USER MAPPING FOR CURRENT_USER
SERVER darwin_server
OPTIONS (
    user 'odoo',
    password '123456'
);