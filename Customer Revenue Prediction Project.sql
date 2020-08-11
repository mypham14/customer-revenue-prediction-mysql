-- 1. Which user had the maximum number of visits and when? 1.96E+18
use project1;
select visitors.fullVisitorId, Visits.VisitNumber, Visits.VisitStartTime, Visits.Date1 from visitors
join Visits on visitors.fullVisitorId = Visits.Visitors_fullVisitorId
where (select max(VisitNumber) from visitors);

-- 2. Which operating system (devices) was the most popular amongst store visitors? Windows
select OperatingSystem, count(OperatingSystem) as CountOfDevices from Devices
group by OperatingSystem having count(OperatingSystem) 
order by OperatingSystem desc;

-- 3. Which date had the least and most number of visits? 20180416
(select distinct date1, sum(VisitNumber) as LeastVisits from Visits group by date1 order by sum(VisitNumber) asc limit 1)
union
(select distinct date1, sum(VisitNumber) as MostVisits from Visits group by date1 order by sum(VisitNumber) desc limit 1);

-- 4. Which country had the most number of iOS users who were socially engaged?
select distinct SocialEngagementType, Continents.country from Visitors join Continents on Continents.Country = Visitors.Country;

-- 5. Provide a breakdown of unique visitors by operating system type
select OperatingSystem, count(distinct Visitors.fullVisitorID) as UniqueVisitors from Devices
join Visitors on Visitors.fullVisitorID = Devices.fullVisitorID group by OperatingSystem;

-- 6. How many users have used both mobile and nonmobile devices to visit the store?
select count(Visitors.FullVisitorId) as TotalUsers from Visitors 
join devices on Visitors.fullVisitorID = Devices.fullVisitorID
where ((devicecategory like ‘mobile’) and (devicecategory is not = ‘mobile’));

-- 7. Which country had the least number of hits higher than zero?
select distinct Country, sum(hits) as TotalHits, min(sum(hits)) From ((continents
Join Visitors on Visitors.Country = Continents.Country)
Join Sessions on  Sessions.FullVisitorID = Visitors.FullVisitorID)
Where (hits > 0);

-- 8. Which region had more blackberry users than iOS users?
select Visits.Region, Devices.OperatingSystem from Visits
join Visitors on Visitors.fullVisitorID = Visits.fullVisitorsID
join Devices on Devices.fullVisitorID = Visitors.fullVisitorsID
where (count(OperatingSystem like 'blackberry') > count(OperatingSystem like 'iOS'));
