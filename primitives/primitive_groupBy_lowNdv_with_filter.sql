select sum(ss_list_price) from store_sales where ss_cdemo_sk between 1406751 and 1406752 group by ss_sold_date_sk having sum(ss_list_price) = 1;
