select count(*) from store_sales, item, store where i_item_sk = ss_item_sk and s_store_sk = ss_store_sk
and ss_sold_date_sk between 2450816 and 2451500
;
