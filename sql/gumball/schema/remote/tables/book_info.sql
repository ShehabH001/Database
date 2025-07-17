-- This script creates a foreign table in PostgreSQL to access a remote table.

-- Create a foreign table that mirrors the remote table
-- The foreign table will be used to access product_table table in darwin database
-- i need id column only for connect (foreign key) beteen book_info and token, annotation, .. tables
CREATE FOREIGN TABLE remote.book_info (
    id integer
    -- ,
    -- sequence integer,
    -- categ_id integer,
    -- uom_id integer,
    -- uom_po_id integer,
    -- company_id integer,
    -- color integer,
    -- create_uid integer,
    -- write_uid integer,
    -- detailed_type character varying,
    -- type character varying,
    -- default_code character varying,
    -- priority character varying,
    -- name jsonb,
    -- description character varying,
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
    -- service_type character varying,
    -- sale_line_warn character varying,
    -- expense_policy character varying,
    -- invoice_policy character varying,
    -- sale_line_warn_msg text,
    -- service_tracking character varying,
    -- sale_delay integer,
    -- tracking character varying,
    -- description_picking jsonb,
    -- description_pickingout jsonb,
    -- description_pickingin jsonb,
    -- purchase_method character varying,
    -- purchase_line_warn character varying,
    -- purchase_line_warn_msg text,
    -- split_method_landed_cost character varying,
    -- landed_cost_ok boolean,
    -- number_of_page integer,
    -- book_type character varying,
    -- author character varying,
    -- publisher character varying,
    -- book_number character varying,
    -- language character varying,
    -- date_of_publish_book character varying,
    -- translater character varying,
    -- length double precision,
    -- width double precision,
    -- height double precision,
    -- available_in_pos boolean,
    -- to_weight boolean,
    -- create_repair boolean,
    -- recurring_invoice boolean,
    -- internal_reference_prefix character varying,
    -- can_be_expensed boolean,
    -- service_upsell_threshold double precision,
    -- summary text,
    -- publisher_id integer,
    -- subscription_id integer
)

SERVER darwin_server
OPTIONS (
    schema_name 'public',  -- or whatever schema on remote server
    table_name 'product_template'
);