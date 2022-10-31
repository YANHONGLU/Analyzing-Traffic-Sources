use mavenfuzzyfactory;
select min(date(created_at)) as week_start_date,
       count(distinct website_sessions.website_session_id) as sessions
from website_sessions
where website_sessions.created_at<'2012-05-10'
      and website_sessions.utm_source='gsearch'
      and website_sessions.utm_campaign='nonbrand'
group by yearweek(website_sessions.created_at)