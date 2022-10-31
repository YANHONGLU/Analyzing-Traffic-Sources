use mavenfuzzyfactory;
select min(date(created_at)) as week_start_date,
      count(distinct case when device_type='desktop' then website_sessions.website_session_id else null end) as dtop_sessions,
      count(distinct case when device_type='mobile' then website_sessions.website_session_id else null end) as mob_sessions
from website_sessions
where website_sessions.created_at<'2012-06-09'
      and website_sessions.created_at>'2012-04-15'
      and website_sessions.utm_source='gsearch'
      and website_sessions.utm_campaign='nonbrand'
group by yearweek(website_sessions.created_at)