create table person (
	person_id varchar primary key,
	gender_concept_id varchar,
	year_of_birth int, 
	month_of_birth int, 
	day_of_birth int, 
	birth_datetime timestamp,
	race_concept_id varchar,
	ethnicity_concept_id int, 
	location_id varchar, 
	provider_id varchar, 
	care_site_id varchar, 
	person_source_value varchar, 
	gender_source_value char(2),
	gender_source_concept_id int,
	race_source_value varchar, 
	race_source_concept_id int, 
	ethnicity_source_value varchar,
	ethnicity_source_concept_id int
);
\copy person FROM 'C:\Users\bbbbb_jjj\Downloads\synthea_cdm_csv\person.csv' DELIMITER ',' CSV

select * from person