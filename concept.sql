create table concept (
	concept_id varchar,
	concept_name varchar,
	domain_id varchar,
	vocabulary_id varchar,
	concept_class_id varchar,
	standard_concept varchar,
	concept_code varchar,
	valid_start_date date,
	valid_end_date date, 
	invalid_reason varchar
);

\copy concept FROM 'C:\Users\bbbbb_jjj\Downloads\synthea_cdm_csv\concept.csv' DELIMITER ',' CSV

select * from concept