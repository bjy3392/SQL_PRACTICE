create table condition_occurrence(
	condition_occurrence_id varchar,
	person_id varchar,
	condition_concept_id varchar,
	condition_start_date date,
	condition_start_datetime timestamp,
	condition_end_date date,
	condition_end_datetime timestamp,
	condition_type_concept_id varchar,
	stop_reason varchar,
	provider_id varchar,
	visit_occurrence_id varchar,
	visit_detail_id varchar,
	condition_source_value varchar,
	condition_source_concept_id varchar,
	condition_status_source_value varchar,
	condition_status_concept_id	 varchar
);


\copy condition_occurrence FROM 'C:\Users\bbbbb_jjj\Downloads\synthea_cdm_csv\condition_occurrence.csv' DELIMITER ',' CSV
