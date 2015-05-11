-- Shuffle join one to many with Group by 
select count(*) rowcount
from store_sales a
     ,store_returns b
where  a.ss_item_sk = b.sr_item_sk
   and a.ss_ticket_number = b.sr_ticket_number
   and ss_sold_date_sk between 2450816 and 2451500
   and sr_returned_date_sk between 2450816 and 2451500
group by ss_cdemo_sk,ss_store_sk,ss_item_sk , ss_ticket_number having rowcount > 1
