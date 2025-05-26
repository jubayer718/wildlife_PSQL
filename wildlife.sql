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

SELECT * FROM species;


INSERT INTO sightings (species_id, ranger_id, location, sightings_time, notes)
VALUES
  (1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
  (2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
  (3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
  (1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL);

select * FROM sightings;
-- problem--1

INSERT INTO rangers(ranger_name, region)
 VALUES
 ( 'Derek Fox', 'Coastal Plains');

--  problem--2

SELECT COUNT(DISTINCT species_id) AS unique_species_count
FROM sightings;


-- problem--3

SELECT * FROM sightings WHERE location LIKE '%Pass%';

-- problem--4

SELECT rangers.ranger_name, COUNT(sightings.sighting_id) AS total_sightings
FROM rangers
LEFT JOIN sightings ON rangers.ranger_id = sightings.ranger_id
GROUP BY rangers.ranger_name
ORDER BY rangers.ranger_name;

-- problems--5

SELECT species.common_name from  species
LEFT JOIN sightings ON species.species_id = sightings.species_id
WHERE sightings.sighting_id IS NULL;

-- problems--6


SELECT 
  species.common_name, 
  sightings.sightings_time, 
  rangers.ranger_name
FROM sightings
JOIN species ON sightings.species_id = species.species_id
JOIN rangers ON sightings.ranger_id = rangers.ranger_id
ORDER BY sightings.sightings_time DESC
LIMIT 2;
