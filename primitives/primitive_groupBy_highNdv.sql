-- group by query high NDV
select 
    ss_item_sk, ss_ticket_number, count(*) rowcount
from
    store_sales 
    where ss_sold_date_sk between 2450816 and 2451500
group by ss_item_sk , ss_ticket_number having rowcount > 100000000;

