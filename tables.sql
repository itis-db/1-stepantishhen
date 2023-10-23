CREATE TABLE ActivityType (
    ActivityTypeId INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Activity (
    ActivityId INT PRIMARY KEY,
    ParentId INT,
    ActivityTypeId INT,
    Name VARCHAR(255),
    AreaId INT,
    FOREIGN KEY (ActivityTypeId) REFERENCES ActivityType(ActivityTypeId)
);

CREATE TABLE Program (
    ActivityId INT PRIMARY KEY,
    FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId)
);

CREATE TABLE SubProgram (
    ActivityId INT PRIMARY KEY,
    FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId)
);

CREATE TABLE Project (
    ActivityId INT PRIMARY KEY,
    FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId)
);

CREATE TABLE Contract (
    ActivityId INT PRIMARY KEY,
    AreaId INT,
    FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId)
);

CREATE TABLE Point (
    ActivityId INT PRIMARY KEY,
    FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId)
);