

# Analyzing-Traffic-Sources






1) Object:

 increase product-level sales, through analyzing how customers access and interact with the site, landing page performance and conversion

2）Terms:

1.Traffic source analysis    2.Paid traffic     3.Analyzing for bid optimization


3）Dataset:

DOWNLOAD FILE: create_mavenfuzzyfactory.sql

https://mavenanalytics-my.sharepoint.com/personal/aaron_mavenanalytics_onmicrosoft_com/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Faaron%5Fmavenanalytics%5Fonmicrosoft%5Fcom%2FDocuments%2FAdvanced%20SQL%20%2B%20MySQL%20for%20Analytics%20%26%20Business%20Intelligence&ga=1


 <img width="384" alt="image" src="https://user-images.githubusercontent.com/74843963/198989238-af71d7fd-1b9e-446f-8f5d-71d2e71d3ae1.png">
 
 

4)Technologies:

MySQL Workbench and MySQL Language


5)Tasks: 

Task 1: Site traffic breakdown: understand where the bulk of website sessions are coming from



<img width="282" alt="image" src="https://user-images.githubusercontent.com/74843963/198990400-beecc215-6f78-43fc-baf5-fbd4857d674f.png">



Task 2: Dig into gsearch nonbrand--Gsearch conversion rate: calculate the conversion rate (CVR) from session to order



<img width="268" alt="image" src="https://user-images.githubusercontent.com/74843963/198990535-b22d3bcc-3c5b-4d8f-8ed6-01865bb10487.png">



Task3: New Gsearch volume trends: pull gsearch nonbrand trended session volume, by week, to see if the bid changes have caused volume to drop at all



<img width="135" alt="image" src="https://user-images.githubusercontent.com/74843963/198990594-8c658b80-8ff6-481b-8ef1-47e0a9e963f2.png">



Task4:Gsearch device-level performance:  pull conversion rates from session to order, by device type


<img width="224" alt="image" src="https://user-images.githubusercontent.com/74843963/198990637-ccceb573-cb69-4794-aac2-d55d62774297.png">


Task5:Adguested Gsearch device-level trends(Check):pull weekly trends for both desktop and mobile to see the impact on volume


<img width="253" alt="image" src="https://user-images.githubusercontent.com/74843963/198990700-5c11f392-f5aa-423c-9d66-8241a9b4b433.png">



6）Challenge: Massive dateset

The create_mavenfuzzyfactory.sql file that going to be running is pretty big and experience issues running this file due to their default max_allowed_packet setting.

The solution is update  max_allowed_packet setting by running the following command in MySQL Workbench,to allow Workbench to accept a larger file (of size 1073741824 in this case). 
SET GLOBAL max_allowed_packet = 1073741824; 

