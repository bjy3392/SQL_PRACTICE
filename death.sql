create table death(
	person_id varchar,
	death_date date,
	death_datetime timestamp,
	death_type_concept_id varchar,
	cause_concept_id varchar,
	cause_source_value varchar,
	cause_source_concept_id varchar
);


\copy death FROM 'C:\Users\bbbbb_jjj\Downloads\synthea_cdm_csv\death.csv' DELIMITER ',' CSV


select * from death