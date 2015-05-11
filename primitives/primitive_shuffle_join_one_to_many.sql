-- Shuffle join 
select count(*) 
from store_sales a
     ,store_returns b
where  a.ss_item_sk = b.sr_item_sk 
   and a.ss_ticket_number = b.sr_ticket_number
   and ss_sold_date_sk between 2450816 and 2451500
   and sr_returned_date_sk between 2450816 and 2451500
;

