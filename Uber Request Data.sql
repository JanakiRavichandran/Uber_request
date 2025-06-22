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