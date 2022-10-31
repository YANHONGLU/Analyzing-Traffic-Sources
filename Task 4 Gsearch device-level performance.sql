use mavenfuzzyfactory;
select  website_sessions.device_type,
       count(distinct website_sessions.website_session_id) as sessions,
       count(distinct orders.order_id) as orders,
       count(distinct orders.order_id)/count(distinct website_sessions.website_session_id) as conv_rt
from website_sessions
left join orders
on orders.website_session_id=website_sessions.website_session_id
where website_sessions.created_at<'2015-05-11'
      and utm_source='gsearch'
      and utm_campaign='nonbrand'
group by 1
