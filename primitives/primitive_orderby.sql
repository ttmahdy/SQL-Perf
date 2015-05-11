select * from store_returns
order by sr_item_sk desc          	,
sr_customer_sk      desc	,
sr_cdemo_sk         	,
sr_hdemo_sk         	,
sr_addr_sk          	,
sr_store_sk         	,
sr_reason_sk        	,
sr_ticket_number    	desc,
sr_return_quantity  	,
sr_return_amt       	,
sr_return_tax       	,
sr_return_amt_inc_tax	,
sr_fee              	,
sr_return_ship_cost 	,
sr_refunded_cash    	,
sr_reversed_charge  	,
sr_store_credit     	desc,
sr_net_loss         	,
sr_returned_date_sk limit 10000;
