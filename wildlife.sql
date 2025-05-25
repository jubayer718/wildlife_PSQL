-- Active: 1747975756696@@127.0.0.1@5432@wildlife



CREATE TABLE rangers(
  ranger_id SERIAL PRIMARY KEY,
  ranger_name VARCHAR(50) NOT NULL,
  region VARCHAR(600)
)

CREATE TABLE species(
  species_id SERIAL PRIMARY KEY,
  common_name VARCHAR(50),
  scientific_name VARCHAR(50),
  discovery_date VARCHAR(20),
  conservation_status VARCHAR(500)
)




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



DROP TABLE sightings;
