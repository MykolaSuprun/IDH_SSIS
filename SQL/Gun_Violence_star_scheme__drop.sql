-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-05-23 13:32:44.436

-- foreign keys
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-05-23 13:32:44.436

-- foreign keys
IF OBJECT_ID('dbo.Incident', 'U') IS NOT NULL
	ALTER TABLE Incident DROP CONSTRAINT Incindent_Date
IF OBJECT_ID('dbo.Incident', 'U') IS NOT NULL
	ALTER TABLE Incident DROP CONSTRAINT Incindent_Guns_Involved;
IF OBJECT_ID('dbo.Incident', 'U') IS NOT NULL
	ALTER TABLE Incident DROP CONSTRAINT Incindent_Incinndent_Info;
IF OBJECT_ID('dbo.Incident', 'U') IS NOT NULL
	ALTER TABLE Incident DROP CONSTRAINT Incindent_Location;
IF OBJECT_ID('dbo.Incident', 'U') IS NOT NULL
	ALTER TABLE Incident DROP CONSTRAINT Incindent_Participants;


-- tables
DROP TABLE IF EXISTS Date;

DROP TABLE IF EXISTS Guns_Involved;

DROP TABLE IF EXISTS Incident;

DROP TABLE IF EXISTS Incident_Info;

DROP TABLE IF EXISTS Location;

DROP TABLE IF EXISTS Participants;

-- End of file.


-- tables
DROP TABLE IF EXISTS Date;

DROP TABLE IF EXISTS Guns_Involved;

DROP TABLE IF EXISTS Incident;

DROP TABLE IF EXISTS Incident_Info;

DROP TABLE IF EXISTS Location;

DROP TABLE IF EXISTS Participants;

-- End of file.

