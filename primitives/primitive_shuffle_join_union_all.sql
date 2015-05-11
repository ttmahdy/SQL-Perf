-- Shuffle join with union all
select count(* )from (

select ss_item_sk ,ss_ticket_number,ss_store_sk 
from store_sales a
     ,store_returns b
where  a.ss_item_sk = b.sr_item_sk 
   and a.ss_ticket_number = b.sr_ticket_number
and ss_sold_date_sk between 2450816 and 2451500
and sr_returned_date_sk between 2450816 and 2451500

   union all 
select ss_item_sk ,ss_ticket_number ,ss_store_sk
from store_sales c
     ,store_returns d
where  c.ss_item_sk = d.sr_item_sk 
   and c.ss_ticket_number = d.sr_ticket_number
   and ss_sold_date_sk between 2450816 and 2451500
   and sr_returned_date_sk between 2450816 and 2451500
) t;
   
