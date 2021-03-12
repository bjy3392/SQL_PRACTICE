SELECT DRUG, NEXTDRUG, COUNT(*)
  FROM (
		SELECT PERSON_ID, 
	  		   DRUG, 
	  		   LEAD(DRUG, 1, NULL) OVER (PARTITION BY PERSON_ID ORDER BY DRUG_EXPOSURE_START_DATE) AS NEXTDRUG --다음에 처방 받은 약
		  FROM (
				SELECT PERSON_ID, 
			  		   DRUG_EXPOSURE_START_DATE,ARRAY_TO_STRING(ARRAY_AGG(CONCEPT_NAME),'/') AS DRUG --같은 날 처방받은 약을 하나로 묶는다.
				  FROM (
						SELECT PS.PERSON_ID, DE.DRUG_EXPOSURE_START_DATE, CT.CONCEPT_NAME
						  FROM CONDITION_OCCURRENCE CO 
						  JOIN PERSON PS
							ON PS.PERSON_ID = CO.PERSON_ID
						  JOIN DRUG_EXPOSURE DE 
							ON PS.PERSON_ID = DE.PERSON_ID
						   AND DRUG_CONCEPT_ID IN ('19018935', '1539411','1539463', '19075601','1115171')	
						  JOIN CONCEPT CT
							ON DE.DRUG_CONCEPT_ID = CT.CONCEPT_ID
						 WHERE CONDITION_CONCEPT_ID IN ('3191208','36684827','3194332','3193274','43531010','4130162','45766052',
								'45757474','4099651','4129519','4063043','4230254','4193704','4304377','201826','3194082','3192767')
						GROUP BY PS.PERSON_ID, DE.DRUG_EXPOSURE_START_DATE,CT.CONCEPT_NAME --동일한 날짜에 동일한 약을 처방 받은 기록있어서
						ORDER BY PS.PERSON_ID, DRUG_EXPOSURE_START_DATE) AA
				GROUP BY PERSON_ID, DRUG_EXPOSURE_START_DATE) BB 
		 )CC
 WHERE DRUG != NEXTDRUG  --현재 약과 다음에 처방된 약이 다른 경우 => 약이 변경됨
 GROUP BY DRUG, NEXTDRUG
 ORDER BY COUNT(*) DESC


