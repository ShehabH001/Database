-- This script creates a foreign table in PostgreSQL to access a remote table.

-- Create a foreign table that mirrors the remote table
-- The foreign table will be used to access product_table table in darwin database
-- i need id column only for connect (foreign key) beteen book_info and token, annotation, .. tables
CREATE FOREIGN TABLE remote.book_info (
    id integer
    -- sequence integer,
    -- categ_id integer,
    -- uom_id integer,
    -- uom_po_id integer,
    -- company_id integer,
    -- color integer,
    -- create_uid integer,
    -- write_uid integer,
    -- detailed_type varchar(255),
    -- type varchar(255),
    -- default_code varchar(255),
    -- priority varchar(255),
    -- name jsonb,
    -- description varchar(255),
    -- description_purchase jsonb,
    -- description_sale jsonb,
    -- product_properties jsonb,
    -- list_price numeric,
    -- volume numeric,
    -- weight numeric,
    -- sale_ok boolean,
    -- purchase_ok boolean,
    -- active boolean,
    -- can_image_1024_be_zoomed boolean,
    -- has_configurable_attributes boolean,
    -- create_date timestamp without time zone,
    -- write_date timestamp without time zone,
    -- sale_delay integer,
    -- tracking varchar(255),
    -- description_picking jsonb,
    -- description_pickingout jsonb,
    -- description_pickingin jsonb,
    -- service_type varchar(255),
    -- sale_line_warn varchar(255),
    -- expense_policy varchar(255),
    -- invoice_policy varchar(255),
    -- sale_line_warn_msg text,
    -- avatax_category_id integer,
    -- number_of_page integer,
    -- book_type varchar(255),
    -- publisher varchar(255),
    -- book_number varchar(255),
    -- language varchar(255),
    -- date_of_publish_book varchar(255),
    -- translater varchar(255),
    -- download boolean,
    -- length double precision,
    -- width double precision,
    -- height double precision,
    -- recurring_invoice boolean
)

SERVER darwin_server
OPTIONS (
    schema_name 'public',  -- or whatever schema on remote server
    table_name 'product_template'
);