use mydb;
SET FOREIGN_KEY_CHECKS=1;

# Create different tables and insert columns into the tables
use mydb;
INSERT INTO devices (Browser,OperatingSystem,DeviceCategory,NetworkDomain,VisitID,Visitors_FullVisitorID,Visitors_Continent_Country)
SELECT Browser,OperatingSystem,DeviceCategory,NetworkDomain,VisitID,FullVisitorID,country
FROM project1
group by VisitID;

use mydb;
ALTER TABLE visits ADD COLUMN VisitNumber int;

use mydb
insert into visits(VisitNumber)
select distinct VisitNumber from project1
group by VisitID;

use mydb;
INSERT INTO continent (Country,subContinent,Continent)
SELECT Country,subContinent,Continent
FROM project1
group by Country;

use mydb;
INSERT INTO sessions (SessionID,Campaign,Source1,Keywordadwords,Hits,Visits,Pageviews,NewVisits,ChannelGrouping,Medium1,Visitors_FullVisitorID,Visitors_Continent_Country)
SELECT distinct SessionID,Campaign,Source1,Keywordadwords,Hits,Visits,Pageviews,NewVisits,ChannelGrouping,Medium1,fullvisitorid,country
FROM project1
group by SessionID;

use mydb;
INSERT INTO visitors (FullVisitorID, SocialEngagementType,Continent_Country)
SELECT distinct FullVisitorID, SocialEngagementType,Country
FROM project1
group by FullVisitorID;

use projectone;
ALTER TABLE project1 ADD COLUMN ID VARCHAR(300);
UPDATE project1 SET ID = CONCAT(VisitID,FullVisitorId)
use mydb;
SET SQL_SAFE_UPDATES = 0;

use mydb;
INSERT INTO visits (visitId, VisitStartTime,VisitNumber,Date1,Region,Metro,City,Visitors_FullVisitorID,Visitors_Continent_Country)
SELECT distinct visitID, VisitStartTime,VisitNumber,Date1,Region,Metro,City,fullvisitorid,country
FROM project1
group by visitID;

use mydb;
DELETE FROM visits
WHERE condition;

set innodb_lock_wait_timeout=9999;

set global innodb_lock_wait_timeout=9999;

use projectone;
SET FOREIGN_KEY_CHECKS=0;

SET GLOBAL innodb_buffer_pool_size=402653184;