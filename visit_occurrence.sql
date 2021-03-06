create table visit_occurrence(
	visit_occurrence_id varchar,
	person_id varchar,
	visit_concept_id varchar,
	visit_start_date date,
	visit_start_datetime timestamp,
	visit_end_date date,
	visit_end_datetime timestamp,
	visit_type_concept_id varchar,
	provider_id varchar,
	care_site_id varchar,
	visit_source_value varchar,
	visit_source_concept_id varchar,
	admitting_source_concept_id varchar,
	admitting_source_value varchar,
	discharge_to_concept_id varchar,
	discharge_to_source_value varchar,
	preceding_visit_occurrence_id varchar
);

\copy visit_occurrence FROM 'C:\Users\bbbbb_jjj\Downloads\synthea_cdm_csv\visit_occurrence.csv' DELIMITER ',' CSV

select * from visit_occurrence