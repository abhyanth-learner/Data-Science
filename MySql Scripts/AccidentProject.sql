create schema accidents103;

CREATE TABLE accident (
    Accident_Index VARCHAR(255) NOT NULL,
    Police_Force INT,
    Accident_Severity INT,
    Number_of_Vehicles INT,
    Number_of_Casualties INT,
    Date VARCHAR(255),
    Day_of_Week INT,
    Time VARCHAR(255),
    Road_Type INT,
    Speed_limit INT,
    Junction_Detail INT,
    Pedestrian_Crossing_Physical_Facilities INT,
    Light_Conditions INT,
    Weather_Conditions INT,
    Road_Surface_Conditions INT,
    Urban_or_Rural_Area INT,
    Did_Police_Officer_Attend_Scene_of_Accident INT,
    PRIMARY KEY (Accident_Index)
);

CREATE TABLE vehicles (
    Accident_Index VARCHAR(255),
    Vehicle_Type INT,
    Skidding_and_Overturning INT,
    Sex_of_Driver INT,
    Age_of_Driver INT
);

create table vehicle_types(
vehicle_code int,
vehicle_type varchar(10)
);


select Day_of_Week,count(*) from accident group by Day_of_Week order by Day_of_Week