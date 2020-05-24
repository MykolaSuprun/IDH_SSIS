-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-05-23 13:32:44.436

-- tables
-- Table: Date
CREATE TABLE Date (
    idDate int  NOT NULL,
    date date  NULL,
    day int  NULL,
    month int  NULL,
    year int  NULL,
    CONSTRAINT Date_pk PRIMARY KEY  (idDate)
);

-- Table: Guns_Involved
CREATE TABLE Guns_Involved (
    idGuns_involved int  NOT NULL,
    n_guns_involved int  NULL,
    gun_stolen nvarchar(max)  NULL,
    gun_type nvarchar(max)  NULL,
    CONSTRAINT Guns_Involved_pk PRIMARY KEY  (idGuns_involved)
);

-- Table: Incident
CREATE TABLE Incident (
    idIncident int  NOT NULL,
    n_killed int  NULL,
    n_injured int  NULL,
    incident_id int  NOT NULL,
    Participants_idParticipants int  NOT NULL,
    Date_idDate int  NOT NULL,
    Location_idLocation int  NOT NULL,
    Incindent_Info_idIncindent_Info int  NOT NULL,
    Guns_Involved_idGuns_involved int  NOT NULL,
    CONSTRAINT Incident_pk PRIMARY KEY  (idIncident)
);

-- Table: Incident_Info
CREATE TABLE Incident_Info (
    idIncident_Info int  NOT NULL,
    incident_url_fields_missing bit  NULL,
    incident_url nvarchar(max)  NULL,
    source_url nvarchar(max)  NULL,
    incident_characteristics nvarchar(max)  NULL,
    notes nvarchar(max)  NULL,
    CONSTRAINT Incident_Info_pk PRIMARY KEY  (idIncident_Info)
);

-- Table: Location
CREATE TABLE Location (
    idLocation int  NOT NULL,
    state nvarchar(50)  NULL,
    city_or_county nvarchar(50)  NULL,
    adress nvarchar(100)  NULL,
    latitude decimal(8,4)  NULL,
    longitude decimal(8,4)  NULL,
    location_description nvarchar(max)  NULL,
    congressional_district int  NULL,
    state_house_district int  NULL,
    state_senate_district int  NULL,
    CONSTRAINT Location_pk PRIMARY KEY  (idLocation)
);

-- Table: Participants
CREATE TABLE Participants (
    idParticipants int  NOT NULL,
    participant_age nvarchar(max)  NULL,
    participant_age_group nvarchar(max)  NULL,
    participant_gender nvarchar(max)  NULL,
    participant_name nvarchar(max)  NULL,
    participant_relationship nvarchar(max)  NULL,
    participant_status nvarchar(max)  NULL,
    participant_type nvarchar(max)  NULL,
    sources nvarchar(max)  NULL,
    CONSTRAINT Participants_pk PRIMARY KEY  (idParticipants)
);

-- foreign keys
-- Reference: Incindent_Date (table: Incident)
ALTER TABLE Incident ADD CONSTRAINT Incindent_Date
    FOREIGN KEY (Date_idDate)
    REFERENCES Date (idDate);

-- Reference: Incindent_Guns_Involved (table: Incident)
ALTER TABLE Incident ADD CONSTRAINT Incindent_Guns_Involved
    FOREIGN KEY (Guns_Involved_idGuns_involved)
    REFERENCES Guns_Involved (idGuns_involved);

-- Reference: Incindent_Incinndent_Info (table: Incident)
ALTER TABLE Incident ADD CONSTRAINT Incindent_Incinndent_Info
    FOREIGN KEY (Incindent_Info_idIncindent_Info)
    REFERENCES Incident_Info (idIncident_Info);

-- Reference: Incindent_Location (table: Incident)
ALTER TABLE Incident ADD CONSTRAINT Incindent_Location
    FOREIGN KEY (Location_idLocation)
    REFERENCES Location (idLocation);

-- Reference: Incindent_Participants (table: Incident)
ALTER TABLE Incident ADD CONSTRAINT Incindent_Participants
    FOREIGN KEY (Participants_idParticipants)
    REFERENCES Participants (idParticipants);

-- End of file.

