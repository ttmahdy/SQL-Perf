insert overwrite into table catalog_sales_t partition (cs_sold_date_sk) select * from catalog_sales;