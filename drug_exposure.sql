create table drug_exposure(
	drug_exposure_id varchar,
	person_id varchar,
	drug_concept_id varchar,
	drug_exposure_start_date date,
	drug_exposure_start_datetime timestamp,
	drug_exposure_end_date date,
	drug_exposure_end_datetime timestamp,
	verbatim_end_date date, 
	drug_type_concept_id varchar,
	stop_reason varchar,
	refills varchar,
	quantity int,
	days_supply varchar,
	sig int,
	route_concept_id int,
	lot_number int,
	provider_id varchar,
	visit_occurrence_id varchar,
	visit_detail_id varchar,
	drug_source_value varchar,
	drug_source_concept_id varchar,
	route_source_value varchar,
	dose_unit_source_value varchar
);

\copy drug_exposure FROM 'C:\Users\bbbbb_jjj\Downloads\synthea_cdm_csv\drug_exposure.csv' DELIMITER ',' CSV

select * from drug_exposure