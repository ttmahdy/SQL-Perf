create table store_returns_t stored as orc as select * from store_returns;
DROP TABLE IF EXISTS store_returns_t;

