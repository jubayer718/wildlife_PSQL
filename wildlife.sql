-- Active: 1747975756696@@127.0.0.1@5432@wildlife



CREATE TABLE rangers(
  ranger_id SERIAL PRIMARY KEY,
  ranger_name VARCHAR(50) NOT NULL,
  region VARCHAR(100) NOT NULL
)

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(150) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(50) NOT NULL
);


 CREATE TABLE sightings (
  sighting_id SERIAL PRIMARY KEY,
  ranger_id INTEGER  NOT NULL,
  species_id INTEGER NOT NULL,
  sightings_time TIMESTAMP NOT NULL,
 location  VARCHAR(150) NOT NULL,
  notes TEXT,
  FOREIGN KEY (ranger_id) REFERENCES rangers(ranger_id),
  FOREIGN KEY (species_id) REFERENCES species(species_id)
 );


--insert rows and data to ranger table
INSERT INTO rangers(ranger_name, region)
 VALUES
 ('Alice Green', 'Northern Hills'),
 ('Bob White', 'River Delta'),
 ('Carol', 'Mountain Range')

 SELECT * from rangers;


--insert rows and data to species table

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status)
VALUES 
  ('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
  ('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
  ('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
  ('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');


-- problem--1

INSERT INTO rangers(ranger_name, region)
 VALUES
 ( 'Derek Fox', 'Coastal Plains');

--  problem--2

