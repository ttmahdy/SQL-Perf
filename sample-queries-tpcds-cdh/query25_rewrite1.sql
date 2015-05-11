with ss as (
select 	ss_net_profit
  		,ss_item_sk
  		,ss_customer_sk
  		,ss_ticket_number 
  		,ss_store_sk
  from  store_sales,date_dim d1
 where   d1.d_year = 1998
  and d1.d_date_sk = ss_sold_date_sk),
sr as (
select
	sr_net_loss,
	sr_customer_sk,
	sr_item_sk,
	sr_ticket_number
from  store_returns
     ,date_dim d2
where store_returns.sr_returned_date_sk = d2.d_date_sk
   and d2.d_moy               between 4 and  10
  and d2.d_year              = 1998),
cs as(
select 
	cs_net_profit,
	cs_bill_customer_sk,
	cs_item_sk
from catalog_sales,date_dim d3 where
catalog_sales.cs_sold_date_sk = d3.d_date_sk
	and  d3.d_moy               between 4 and  10
  	and d3.d_year              = 1998)
select
  i_item_id
  ,i_item_desc
  ,s_store_id
  ,s_store_name
  ,sum(ss_net_profit) as store_sales_profit
  ,sum(sr_net_loss) as store_returns_loss
  ,sum(cs_net_profit) as catalog_sales_profit
 from (select * from cs,sr,ss where
 		sr.sr_item_sk = cs.cs_item_sk
   and 	sr.sr_customer_sk = cs.cs_bill_customer_sk
   and  ss.ss_customer_sk = sr.sr_customer_sk
   and 	ss.ss_item_sk = sr.sr_item_sk
   and 	ss.ss_ticket_number = sr.sr_ticket_number
   ) a,
   store,item
   where  i_item_sk = a.ss_item_sk
  and s_store_sk = a.ss_store_sk
  group by
  i_item_id
  ,i_item_desc
  ,s_store_id
  ,s_store_name
  order by
  i_item_id
  ,i_item_desc
  ,s_store_id
  ,s_store_name
  limit 100;
