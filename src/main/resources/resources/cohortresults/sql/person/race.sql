select c1.concept_id as concept_id, 
  c1.concept_name as concept_name, 
	hr1.count_value as count_value
from @ohdsi_database_schema.heracles_results hr1
	inner join
	@cdm_database_schema.concept c1
	on hr1.stratum_1 = CAST(c1.concept_id as VARCHAR(255))
where hr1.analysis_id = 4
and cohort_definition_id in (@cohortDefinitionId)