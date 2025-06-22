Create Schema uber_project;
Create table uber_request_data(
Request_id int,
    Pickup_point varchar(20),
    Status varchar(20),
    Request_timestamp varchar(30),
    Request_Date varchar(20),
    Request_Time varchar(20),
    Drop_timestamp varchar(30),
    Drop_Date varchar(20),
    Drop_Time varchar(20),
    Duration varchar(20),
    Time_of_Day varchar(20));
use uber_project;
LOAD DATA LOCAL INFILE 'C:\Users\SRINIVASA COMPUTERS\Desktop\Uber_Project_Raw\Uber_request_data.csv'
INTO TABLE uber_request_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
-- review dataset
Select * from uber_request_data;
-- Cancelled trip
select * from uber_request_data where Status="Cancelled";
-- Cab Availability
select * from uber_request_data where Status = "No Cars Available";
-- checking pickup points
select Pickup_point where status="Cancelled";
Select Pickup_point where Status="No Cars Available";
-- checking time of day
select Pickup_point where Time_of_Day="Night";
Select Pickup_point where Time_of_Day="Early Morning";