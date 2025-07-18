-- This script creates a foreign data wrapper connection to a remote PostgreSQL server.
-- and sets up a foreign table that mirrors a remote table. It also includes commented-out code

-- 1. Install the foreign data wrapper extension (if not already installed)
CREATE EXTENSION IF NOT EXISTS postgres_fdw;

-- 2. Create a server connection to your remote PostgreSQL server
CREATE SERVER darwin_server
FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (
    host '4.227.202.127',
    port '5432',  -- default PostgreSQL port
    dbname 'darwin'  -- name of the remote database
);

-- 3. Create user mapping with remote credentials
CREATE USER MAPPING FOR CURRENT_USER
SERVER darwin_server
OPTIONS (
    user 'postgres',
    password 'a26(7K08t1p_'
);