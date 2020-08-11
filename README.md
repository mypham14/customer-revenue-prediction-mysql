# Google Analytics Customer Revenue Prediction
An analysis of Google's visitor data to identify trends in customers' usage and behavior

## Table of contents
* [Description](#description)
* [Methodologies](#methodologies)
* [Files](#files)
* [Technologies](#technologies)
* [Setup](#setup)
* [Usage](#usage)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

## Description
The objective of this project is to analyze a Google Merchandise Store's (GStore) visitor data to identify trends in customers' usage and behavior, enabling companies using this data to have strategic plans to make a better use of marketing budgets and increase revenues based on the analysis results. This is a data analysis project performed in MySQL Server using SQL queries.

**Source of Dataset**: test.csv file from [Kaggle competition](https://www.kaggle.com/c/ga-customer-revenue-prediction/data) containing 803,863 rows and 12 columns listed under Data Fields. Each row in the dataset is one visit to the store.

**Data Fields**:
* fullVisitorId- A unique identifier for each user of the Google Merchandise Store (loaded as strings to be properly unique).
* channelGrouping - The channel via which the user came to the Store.
* date - The date on which the user visited the Store.
* device - The specifications for the device used to access the Store.
* geoNetwork - This section contains information about the geography of the user.
* sessionId - A unique identifier for this visit to the store.
* socialEngagementType - Engagement type, either "Socially Engaged" or "Not Socially Engaged".
* totals - This section contains aggregate values across the session.
* trafficSource - This section contains information about the Traffic Source from which the session originated.
* visitId - An identifier for this session. This is part of the value usually stored as the _utmb cookie. This is only unique to the user. For a completely unique ID, you should use a combination of fullVisitorId and visitId.
* visitNumber - The session number for this user. If this is the first session, then this is set to 1.
* visitStartTime - The timestamp (expressed as POSIX time).

## Methodologies
* Create assumptions about data entities and relationships
* Create an Entity-Relationship Diagram (ERD) as theird-normal form (3NF) for the data
* Perform data cleaning and ETL using MS Excel and SQL
* Create a physical database based on the ERD created
* Perform data analysis
  - Which user had the maximum number of visits and when?
  - Which operating system (devices) was the most popular amongst store visitors?
  - Which date had the least and most number of visits?
  - Which country had the most number of iOS users who were socially engaged?
  - Provide a breakdown of unique visitors by operating system type
  - Which country had the least number of hits higher than zero?
  - Which region had more blackberry users than iOS users?

## Files
* Project model including 3 files - database and columns generation
  - `Project Model P1.sql`
  - `Projeft Model P2.rar`
  - `Project Model P3.sql`
* `Project Tables.sql` - tables and an entity-relationship diagram (ERD) in third-normal (3NF) form creation
* `Customer Revenue Prediction Project.sql` - data analysis
* `Google Analytics Customer Revenue Prediction Report.pdf` - summary of all project steps and results

## Technologies
Project is created with:
* MS Excel
* SQL
* MySQL Server
* Windows

## Setup
* Download all data files
* Install MySQL Workbench

## Usage
* Combine `Project Model P1.sql`, unzipped `Projeft Model P2.rar`, `Project Model P3.sql` into one sql file and run that file - create a database of all data and dump data into each column
* Run `Project Tables.sql` - create different tables and insert columns into the tables, generating an entity-relationship diagram in 3NF form
* Run `Customer Revenue Prediction Project.sql` - run queries to analyze the data

## Status
Project is finished.

## Inspiration
Project inspired by [Kaggle](https://www.kaggle.com/c/ga-customer-revenue-prediction/data) and Database Foundations course at UT Dallas.

## Contact
Created by:
* Jiaxing Ji
* Yang Chen
* My Pham - [@mypham14](https://github.com/mypham14/) - feel free to contact me on my [LinkedIn](https://www.linkedin.com/in/mytrapham)!
