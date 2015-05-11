select count(*) from store_sales, item where i_item_sk = ss_item_sk
and ss_sold_date_sk between 2450816 and 2451500
;
