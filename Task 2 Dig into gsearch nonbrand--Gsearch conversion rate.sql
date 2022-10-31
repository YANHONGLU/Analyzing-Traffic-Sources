use mavenfuzzyfactory;
select count(distinct website_sessions.website_session_id) as sessions,
	   count(distinct orders.order_id) as orders,
       count(distinct website_sessions.website_session_id)/count(distinct orders.order_id) as session_to_order_conv_rt
from website_sessions
left join orders
on orders.website_session_id=website_sessions.website_session_id
where website_sessions.created_at<'2012-04-14'
      and utm_source='gsearch'
      and utm_campaign='nonbrand';