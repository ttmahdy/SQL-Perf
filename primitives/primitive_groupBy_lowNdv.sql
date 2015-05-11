select sum(ss_list_price) from store_sales group by ss_sold_date_sk having sum(ss_list_price) = 1;
